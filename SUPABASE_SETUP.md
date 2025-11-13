# Supabase Setup Instructions

## 1. Create Supabase Project
- Go to https://supabase.com
- Create a new project
- Wait for the project to be ready

## 2. Get Your Credentials
- Go to Project Settings > API
- Copy your Project URL and anon/public key
- Update `.env` file with these values

## 3. Create Database Table
- Go to SQL Editor in Supabase dashboard
- Run the SQL from `supabase_setup.sql`

## 4. Install Dependencies
```bash
pip install -r requirements.txt
```

## 5. Usage
The `/save_result` endpoint saves predictions to Supabase:
```javascript
fetch('/save_result', {
    method: 'POST',
    headers: {'Content-Type': 'application/json'},
    body: JSON.stringify({
        class: 'ClassName',
        confidence: 95.5
    })
});
```
