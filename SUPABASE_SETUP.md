# Supabase Setup Guide

## 🚀 Getting Started with Supabase

### 1. Create a Supabase Project

1. Go to [https://supabase.com](https://supabase.com)
2. Sign up or log in to your account
3. Click "New Project"
4. Choose your organization
5. Enter project details:
   - **Name**: `social-network-app` (or any name you prefer)
   - **Database Password**: Create a strong password
   - **Region**: Choose the closest region to your users
6. Click "Create new project"

### 2. Get Your Project Credentials

1. In your Supabase dashboard, go to **Settings** → **API**
2. Copy the following values:
   - **Project URL** (looks like: `https://your-project-id.supabase.co`)
   - **Anon public key** (starts with `eyJ...`)

### 3. Set Up Environment Variables

1. Copy the example environment file:
   ```bash
   cp env.example .env
   ```

2. Open the `.env` file and replace the placeholder values:
   ```
   SUPABASE_URL=your_supabase_project_url_here
   SUPABASE_ANON_KEY=your_supabase_anon_key_here
   ```

3. Replace the values with your actual Supabase credentials:
   - `SUPABASE_URL`: Your project URL (e.g., `https://your-project-id.supabase.co`)
   - `SUPABASE_ANON_KEY`: Your anon key (starts with `eyJ...`)

### 4. Enable Email Authentication

1. In your Supabase dashboard, go to **Authentication** → **Providers**
2. Make sure **Email** is enabled
3. Optionally, you can disable email confirmation for testing by going to **Authentication** → **Settings** → **Email Auth** and uncheck "Enable email confirmations"

### 5. Create Test Users (Optional)

You can create test users directly in the Supabase dashboard:

1. Go to **Authentication** → **Users**
2. Click "Add user"
3. Enter email and password
4. The user will be created and can immediately sign in

### 6. Run Your App

```bash
flutter pub get
flutter run
```

## 🔧 Features Implemented

- ✅ **Email/Password Authentication**
- ✅ **User Session Management**
- ✅ **Automatic Login State**
- ✅ **Sign Out Functionality**
- ✅ **Error Handling**

## 🎯 Testing

1. **Sign Up**: Use the "Sign Up here" link on the login page
2. **Sign In**: Use the credentials you created
3. **Sign Out**: Use the logout button in the profile page

## 📝 Notes

- The app will automatically check for existing sessions on startup
- Users will stay logged in until they explicitly sign out
- All authentication errors are displayed to the user
- The app uses Supabase's built-in user management

## 🚨 Important Security Notes

- ✅ **Environment Variables**: Credentials are stored in `.env` file (not committed to git)
- ✅ **Git Ignore**: `.env` file is automatically ignored by git
- ✅ **Template File**: Use `env.example` as a template for your `.env` file
- The anon key is safe to use in client-side code
- Always validate user input on the server side
- For production, consider using different environment files (`.env.production`) 