# 🚀 VeXachat - Advanced Social Dating Platform

<div align="center">

![VeXachat](https://img.shields.io/badge/VeXachat-v2.0.0-cyan?style=for-the-badge)
![Next.js](https://img.shields.io/badge/Next.js-14.2-black?style=for-the-badge&logo=next.js)
![Supabase](https://img.shields.io/badge/Supabase-Auth-green?style=for-the-badge&logo=supabase)
![License](https://img.shields.io/badge/License-MIT-blue?style=for-the-badge)

**Experience the future of social dating with AI-powered matching, immersive chat experiences, and unlimited possibilities.**

[Live Demo](https://vexachat.world) • [Documentation](#documentation) • [Report Bug](mailto:vexa@vexachat.world)

</div>

---

## ✨ Features

### 🎯 Core Features
- **🤖 AI-Powered Matching**: Advanced algorithms for intelligent compatibility matching
- **💬 Unlimited Messaging**: Free and premium chat with rich media support
- **🎥 Live Video Rooms**: Group and private video sessions
- **🔒 Privacy First**: End-to-end encryption and anonymous browsing
- **🌍 Global Reach**: Multi-language support (English, Arabic, Russian, Thai, Spanish, French)
- **⭐ Expert Consultants**: Professional relationship advisors

### 🎨 Design Features
- **Cyberpunk Glassmorphism**: Heavy glass effects with neon accents
- **Advanced Animations**: Framer Motion powered interactions
- **Lightweight Backgrounds**: Canvas 2D powered immersive experiences
- **Responsive Design**: Mobile-first approach
- **Dark Mode**: Built-in with neon aesthetics

### 🔐 Security Features
- **Supabase Authentication**: Secure email/password authentication
- **Row Level Security**: Database-level access control
- **Protected Routes**: Middleware-based route protection
- **Session Management**: Secure cookie-based sessions

---

## 🏗️ Architecture

### Tech Stack

- **Frontend**: Next.js 14 (App Router), React 18
- **Authentication**: Supabase Auth with SSR
- **Database**: PostgreSQL (Supabase)
- **Styling**: Tailwind CSS, Custom Animations
- **Animations**: Framer Motion
- **Deployment**: Vercel (recommended)

---

## 🚀 Quick Start

### Prerequisites

```bash
Node.js >= 18.0.0
npm >= 9.0.0
Supabase Account
```

### Installation

1. **Clone the repository**
```bash
git clone https://github.com/t46d/VX8.git
cd VX8
```

2. **Install dependencies**
```bash
npm install
```

3. **Setup environment variables**
```bash
cp .env.example .env
```

Edit `.env` with your Supabase credentials:
```env
NEXT_PUBLIC_SUPABASE_URL=your_supabase_url
NEXT_PUBLIC_SUPABASE_ANON_KEY=your_anon_key
SUPABASE_SERVICE_ROLE_KEY=your_service_role_key
NEXTAUTH_SECRET=your_secret_key
NEXTAUTH_URL=http://localhost:3000
```

4. **Setup database**
- Go to your Supabase project
- Navigate to SQL Editor
- Copy and paste the contents of `supabase/schema.sql`
- Run the migration

5. **Run development server**
```bash
npm run dev
```

Open [http://localhost:3000](http://localhost:3000) 🎉

---

## 📁 Project Structure

```
vexachat/
├── src/
│   ├── app/                    # Next.js App Router
│   │   ├── auth/
│   │   │   └── callback/       # Auth callback handler
│   │   ├── login/              # Login page
│   │   ├── signup/             # Signup page
│   │   ├── profile/            # User profile
│   │   ├── discover/           # Discover page
│   │   ├── layout.jsx          # Root layout
│   │   └── page.jsx            # Homepage
│   ├── components/            # React components
│   │   ├── Background/         # Background components
│   │   ├── Avatar/             # Avatar components
│   │   ├── UI/                 # UI components
│   │   └── Effects/            # Effect components
│   ├── styles/                 # CSS files
│   │   ├── globals.css
│   │   ├── animations.css
│   │   └── theme.css
│   ├── utils/                  # Utility functions
│   │   ├── supabase/
│   │   └── colorGenerator.js
│   ├── services/               # Business logic
│   ├── lib/                    # Libraries
│   │   └── i18n.js             # Internationalization
│   └── middleware.js           # Next.js middleware
├── public/                     # Static assets
├── supabase/                   # Database migrations
│   └── schema.sql
├── .env.example                # Environment template
├── next.config.js              # Next.js config
├── package.json                # Dependencies
└── README.md                   # Documentation
```

---

## 🚢 Deployment to Vercel

### Step 1: Push to GitHub

```bash
git add .
git commit -m "Ready for Vercel deployment"
git push origin main
```

### Step 2: Import to Vercel

1. Go to [vercel.com](https://vercel.com)
2. Click "Import Project"
3. Select your GitHub repository
4. Configure:
   - **Framework Preset**: Next.js
   - **Root Directory**: `./`
   - **Build Command**: `npm run build`
   - **Output Directory**: `.next`

### Step 3: Add Environment Variables

In Vercel project settings, add:

```env
NEXT_PUBLIC_SUPABASE_URL=https://your-project.supabase.co
NEXT_PUBLIC_SUPABASE_ANON_KEY=your_anon_key_here
SUPABASE_SERVICE_ROLE_KEY=your_service_role_key_here
NEXTAUTH_SECRET=generate_random_32_char_string
NEXTAUTH_URL=https://your-app.vercel.app
```

### Step 4: Deploy

1. Click "Deploy"
2. Wait for deployment (~2-3 minutes)
3. Visit your deployed site! 🎉

---

## 🔧 Configuration

### Supabase Setup

1. **Create a new Supabase project**
2. **Run the database migration** from `supabase/schema.sql`
3. **Configure authentication providers** (Email, Google, etc.)
4. **Set up storage buckets** for user avatars and media
5. **Enable Row Level Security** policies

### Environment Variables

| Variable | Description | Required |
|----------|-------------|----------|
| `NEXT_PUBLIC_SUPABASE_URL` | Supabase project URL | Yes |
| `NEXT_PUBLIC_SUPABASE_ANON_KEY` | Supabase anonymous key | Yes |
| `SUPABASE_SERVICE_ROLE_KEY` | Supabase service role key | Yes |
| `NEXTAUTH_SECRET` | Secret for session encryption | Yes |
| `NEXTAUTH_URL` | Application URL | Yes |

---

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

## 📞 Support

- **Email**: vexa@vexachat.world
- **Website**: [vexachat.world](https://vexachat.world)
- **GitHub**: [t46d/VX8](https://github.com/t46d/VX8)

---

<div align="center">

**Made with ❤️ and ⚡ by the VeXachat Team**

</div>


