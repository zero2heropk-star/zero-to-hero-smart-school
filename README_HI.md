# Zero To Hero Smart School — MVP starter

## Included now
- Mobile-first branded web interface with supplied logo.
- Play Group–Class 12 admission application form.
- Demo application number and pending-review status.
- Local browser demo storage and demo admin listing.
- Sample lesson, sample quiz, PWA manifest and basic offline cache.
- Supabase starter database schema for a future secure backend.

## Important limitations
This package is a **functional front-end MVP/demo**, not yet a production school-management system. Demo applications stay in the same browser/device only. The demo admin screen has no authentication. Do not collect real children's personal information on the public demo.
Real accounts, approval workflow, private document storage, secure attendance, live classes, YouTube API, AI tutor, automatic Sunday tests, payment verification and PDF receipts need backend services, credentials, policies and testing. No such integration is falsely represented as active.

## Run on a phone
1. Download and extract the ZIP.
2. Upload `index.html`, `manifest.webmanifest`, `sw.js`, `assets/` and `supabase/` to a GitHub repository (keep folder structure).
3. In GitHub: repository → Settings → Pages → Deploy from branch → `main` → `/ (root)`.
4. Open the published HTTPS address. On Android Chrome use menu → Add to Home screen.
5. Test admission with sample/non-real data. The application will be visible only in the same browser's local demo admin view.

## Supabase production setup (next phase)
1. Create a Supabase project and keep database password private.
2. Open SQL Editor and run `supabase/schema.sql`.
3. Add server-side role assignment, RLS policies, storage bucket policies, email/SMS verification, audit logs and backup policy before real data.
4. Connect the frontend through the Supabase client using the project URL and anon key (anon key is public by design; service-role key is NEVER public).
5. Implement server-side admin approval that creates a student login only after approval. Never let a public browser set its own `admin` role.
6. Configure gateway orders and signature/webhook verification in a server-side function. Never mark a payment successful from a screenshot or browser callback alone.

## Branding and contact
Official name: Zero To Hero Play Group School & Coaching Center
Owner: Pradeep Sir
Contact: 7388857439
Tagline: हर Zero, Hero बन सकता है

## Next implementation sequence
A. Supabase auth + role claims + RLS + admission approval.
B. Private file uploads and parent consent.
C. Attendance, lessons, assignments and teacher review.
D. Tests generated only from approved completed lesson records.
E. Results, PDFs, fee gateway and verified receipts.
F. YouTube/live/AI integrations after credentials, policy checks and cost approval.

Before launch, have a qualified developer review Indian child-data/privacy obligations and security policies.
