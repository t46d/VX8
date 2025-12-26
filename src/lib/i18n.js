// src/lib/i18n.js

/**
 * ملف إعداد الترجمة (i18n) وإدارة القواميس اللغوية.
 * نستخدم هنا كائن بسيط لإدارة النصوص بدلاً من مكتبة خارجية لتبسيط المشروع.
 */

// القواميس اللغوية
export const translations = {
  // اللغة الإنجليزية - الافتراضية
  en: {
    // الواجهة العامة
    app_name: "VeXachat",
    loading: "Loading...",
    send: "Send",
    save: "Save",
    cancel: "Cancel",
    welcome_title: "Experience the Future of Dating",
    
    // المصادقة
    login_title: "Welcome Back, Cybernaut",
    signup_title: "Join the Neon Grid",
    email: "Email Address",
    password: "Password",
    name: "Full Name",
    login_button: "Login to Grid",
    signup_button: "Create Account",
    forgot_password: "Forgot Password?",
    no_account: "Don't have an account?",
    has_account: "Already on the Grid?",
    
    // صفحة الاستكشاف (Discover)
    discover_title: "Discover New Connections",
    discover_subtitle: "Swipe to find your perfect match",
    matches_today: "Matches Today",
    profiles_remaining: "Profiles Remaining",
    no_more_profiles: "You've seen everyone!",
    check_back_later: "Check back later for more profiles",
    refresh_profiles: "Refresh Profiles",
    pass: "Pass",
    like: "Like",
    super_like: "Super Like",
    
    // الملف الشخصي (Profile)
    edit_profile: "Edit Profile",
    age: "Age",
    bio: "Bio",
    location: "Location",
    interests: "Interests",
    is_consultant: "Available for Consultation",
    consultant_rate: "Hourly Rate (USD)",
    specialties: "Specialties",
    
    // الرسائل والإشعارات
    match_found: "It's a Match! Start Chatting.",
    message_new: "New Message from",
    
    // حالات المطابقة
    status_pending: "Pending",
    status_accepted: "Accepted",
    status_rejected: "Rejected",
  },

  // اللغة العربية
  ar: {
    // الواجهة العامة
    app_name: "فيشات",
    loading: "جاري التحميل...",
    send: "إرسال",
    save: "حفظ",
    cancel: "إلغاء",
    welcome_title: "اكتشف مستقبل المواعدة",
    
    // المصادقة
    login_title: "مرحباً بعودتك أيها السايبرناوت",
    signup_title: "انضم إلى الشبكة النيونية",
    email: "البريد الإلكتروني",
    password: "كلمة المرور",
    name: "الاسم الكامل",
    login_button: "تسجيل الدخول",
    signup_button: "إنشاء حساب",
    forgot_password: "نسيت كلمة المرور؟",
    no_account: "ليس لديك حساب؟",
    has_account: "هل لديك حساب بالفعل؟",
    
    // صفحة الاستكشاف (Discover)
    discover_title: "اكتشف علاقات جديدة",
    discover_subtitle: "اسحب يميناً للعثور على شريكك المثالي",
    matches_today: "تطابقات اليوم",
    profiles_remaining: "الملفات المتبقية",
    no_more_profiles: "لقد رأيت الجميع!",
    check_back_later: "تحقق لاحقاً لرؤية المزيد من الملفات",
    refresh_profiles: "تحديث الملفات",
    pass: "تجاوز",
    like: "إعجاب",
    super_like: "إعجاب خارق",
    
    // الملف الشخصي (Profile)
    edit_profile: "تعديل الملف الشخصي",
    age: "العمر",
    bio: "السيرة الذاتية",
    location: "الموقع",
    interests: "الاهتمامات",
    is_consultant: "متاح للاستشارة",
    consultant_rate: "السعر بالساعة (بالدولار الأمريكي)",
    specialties: "التخصصات",
    
    // الرسائل والإشعارات
    match_found: "تطابق! ابدأ الدردشة الآن.",
    message_new: "رسالة جديدة من",
    
    // حالات المطابقة
    status_pending: "معلق",
    status_accepted: "مقبول",
    status_rejected: "مرفوض",
  },

  // اللغة الروسية
  ru: {
    app_name: "VeXachat",
    loading: "Загрузка...",
    send: "Отправить",
    save: "Сохранить",
    cancel: "Отмена",
    welcome_title: "Испытайте будущее знакомств",
    login_title: "Добро пожаловать, Кибернавт",
    signup_title: "Присоединяйтесь к Неоновой Сети",
    email: "Адрес электронной почты",
    password: "Пароль",
    name: "Полное имя",
    login_button: "Войти",
    signup_button: "Создать аккаунт",
  },

  // اللغة التايلندية
  th: {
    app_name: "VeXachat",
    loading: "กำลังโหลด...",
    send: "ส่ง",
    save: "บันทึก",
    cancel: "ยกเลิก",
    welcome_title: "สัมผัสอนาคตของการเดท",
    login_title: "ยินดีต้อนรับกลับมา Cybernaut",
    signup_title: "เข้าร่วมกริดนีออน",
    email: "ที่อยู่อีเมล",
    password: "รหัสผ่าน",
    name: "ชื่อเต็ม",
    login_button: "เข้าสู่ระบบ",
    signup_button: "สร้างบัญชี",
  },

  // اللغة الإسبانية
  es: {
    app_name: "VeXachat",
    loading: "Cargando...",
    send: "Enviar",
    save: "Guardar",
    cancel: "Cancelar",
    welcome_title: "Experimenta el Futuro de las Citas",
    login_title: "Bienvenido de nuevo, Cybernaut",
    signup_title: "Únete a la Red Neón",
    email: "Dirección de correo electrónico",
    password: "Contraseña",
    name: "Nombre completo",
    login_button: "Iniciar sesión",
    signup_button: "Crear cuenta",
  },

  // اللغة الفرنسية
  fr: {
    app_name: "VeXachat",
    loading: "Chargement...",
    send: "Envoyer",
    save: "Enregistrer",
    cancel: "Annuler",
    welcome_title: "Découvrez l'avenir des rencontres",
    login_title: "Bon retour, Cybernaute",
    signup_title: "Rejoignez la Grille Néon",
    email: "Adresse e-mail",
    password: "Mot de passe",
    name: "Nom complet",
    login_button: "Se connecter",
    signup_button: "Créer un compte",
  },
};

/**
 * قائمة اللغات المدعومة والاتجاه (LTR/RTL)
 */
export const locales = [
  { locale: 'en', direction: 'ltr', name: 'English' },
  { locale: 'ar', direction: 'rtl', name: 'العربية' },
  { locale: 'ru', direction: 'ltr', name: 'Русский' },
  { locale: 'th', direction: 'ltr', name: 'ไทย' },
  { locale: 'es', direction: 'ltr', name: 'Español' },
  { locale: 'fr', direction: 'ltr', name: 'Français' },
];

/**
 * وظيفة جلب النص المترجم
 * @param {string} locale - كود اللغة المطلوب (مثل 'en' أو 'ar')
 * @param {string} key - مفتاح النص في قاموس الترجمة
 * @returns {string} النص المترجم أو المفتاح في حال عدم العثور عليه
 */
export function getTranslation(locale, key) {
  const dictionary = translations[locale] || translations.en;
  return dictionary[key] || key;
}

/**
 * الحصول على اتجاه اللغة
 * @param {string} locale - كود اللغة
 * @returns {string} 'ltr' أو 'rtl'
 */
export function getDirection(locale) {
  const localeInfo = locales.find(l => l.locale === locale);
  return localeInfo?.direction || 'ltr';
}
