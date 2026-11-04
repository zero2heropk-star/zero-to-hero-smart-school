# Zero To Hero Smart School – Demo App

## मोबाइल से GitHub Pages पर अपडेट
1. ZIP को extract करें।
2. इस folder की सभी files और `assets` folder को अपने GitHub repository `zero-to-hero-smart-school` के root में upload करें।
3. पुराने `index.html` को replace करें; `assets/logo.png` भी upload करें।
4. Commit changes करें। GitHub Pages कुछ मिनट में वेबसाइट अपडेट कर देगा।

## इस संस्करण में
- आपके दिए हुए मूल लोगो का उपयोग
- Student ID + Password वाला Login UI
- Demo dashboard: classes, tests, revision, live class, study material, results आदि
- पुराने admission, classroom, quiz और admin demo sections

## जरूरी सुरक्षा सूचना
यह केवल शुरुआती frontend demo है। अभी कोई असली account/password verification नहीं होती; कोई भी non-empty ID और password डालने पर demo dashboard खुलता है। वास्तविक छात्र खातों के लिए secure backend, admin approval, password hashing, reset flow और database जरूरी हैं। Face Unlock बटन अभी सूचना दिखाता है; असली biometric/passkey सुविधा अभी जोड़ी नहीं गई है। बच्चों के चेहरे की तस्वीरें/biometric templates स्कूल सर्वर पर जमा न करें। Android/device biometric को स्थानीय रूप से इस्तेमाल करने वाला सुरक्षित flow बनाएं।
