# Zero To Hero Android APK source

यह Android WebView wrapper है। यह प्रकाशित वेबसाइट को ऐप के अंदर खोलता है; यह अपने-आप सुरक्षित Student ID/password backend या face recognition नहीं बनाता।

## GitHub पर अपलोड
इस ZIP को Extract करें। इसके अंदर की सभी फाइलें और `.github` फ़ोल्डर अपने `zero-to-hero-smart-school` repository के root में अपलोड करें। फ़ोल्डर संरचना बिल्कुल वैसी ही रखें। फिर Commit changes करें।

## APK बनाना
Repository में Actions टैब खोलें। `Build Android APK` workflow चुनें और `Run workflow` दबाएँ। सफल होने पर workflow run खोलें, नीचे Artifacts में `Zero-To-Hero-Smart-School-APK` डाउनलोड करें। ZIP extract करके `app-debug.apk` मिलेगा।

यह debug/test APK है; Play Store पर प्रकाशित करने के लिए अलग signed release build चाहिए।
