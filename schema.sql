-- Supabase starter schema. Run only after creating a Supabase project.
create extension if not exists pgcrypto;
create type public.app_role as enum ('student','parent','teacher','admin');
create type public.admission_status as enum ('pending','approved','rejected');
create table public.profiles (
 id uuid primary key references auth.users(id) on delete cascade,
 full_name text not null, role public.app_role not null default 'parent',
 student_id text unique, created_at timestamptz not null default now()
);
create table public.admissions (
 id uuid primary key default gen_random_uuid(),
 application_no text unique not null default ('ZTH-'||upper(substr(replace(gen_random_uuid()::text,'-',''),1,10))),
 student_name text not null, dob date not null, class_name text not null,
 academic_session text not null, father_name text not null, mother_name text,
 parent_mobile text not null, address text not null,
 status public.admission_status not null default 'pending',
 reviewed_by uuid references public.profiles(id), reviewed_at timestamptz,
 created_at timestamptz not null default now()
);
create table public.attendance (
 id uuid primary key default gen_random_uuid(), student_id uuid not null references public.profiles(id),
 class_name text not null, attendance_date date not null, status text not null check(status in ('present','absent','late','leave')),
 marked_by uuid not null references public.profiles(id), created_at timestamptz default now(),
 unique(student_id,attendance_date)
);
create table public.lessons (
 id uuid primary key default gen_random_uuid(), class_name text not null, subject text not null,
 chapter text not null, topic text not null, content jsonb not null default '{}',
 taught_on date, taught_by uuid references public.profiles(id), approved boolean not null default false
);
create table public.tests (
 id uuid primary key default gen_random_uuid(), class_name text not null, subject text not null,
 title text not null, scheduled_at timestamptz, questions jsonb not null default '[]',
 source_lesson_ids uuid[] not null default '{}', status text not null default 'draft',
 approved_by uuid references public.profiles(id)
);
create table public.test_submissions (
 id uuid primary key default gen_random_uuid(), test_id uuid not null references public.tests(id),
 student_id uuid not null references public.profiles(id), answers jsonb not null default '{}',
 score numeric, submitted_at timestamptz default now(), unique(test_id,student_id)
);
create table public.fee_payments (
 id uuid primary key default gen_random_uuid(), student_id uuid not null references public.profiles(id),
 receipt_no text unique not null, fee_type text not null, amount_paise bigint not null check(amount_paise>=0),
 gateway_order_id text unique, gateway_payment_id text unique, status text not null default 'pending',
 verified_at timestamptz, created_at timestamptz default now()
);
alter table public.profiles enable row level security;
alter table public.admissions enable row level security;
alter table public.attendance enable row level security;
alter table public.lessons enable row level security;
alter table public.tests enable row level security;
alter table public.test_submissions enable row level security;
alter table public.fee_payments enable row level security;
-- No permissive public policies are created intentionally. Add policies only after
-- defining trusted role claims and server-side admission approval workflows.
-- Never expose the service_role key in browser code.
