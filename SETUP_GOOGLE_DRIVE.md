# Google Drive Setup Instructions (100% FREE)

## Important: Google Cloud Console is FREE for this use!
You only need a Google account. No payment required for Drive API access.

## Steps to Enable Google Drive Upload:

1. **Go to Google Cloud Console**: https://console.cloud.google.com/
   - Sign in with your Google account
   - Skip any billing prompts (not needed for this)

2. **Create a New Project**:
   - Click "Select a project" > "New Project"
   - Name it (e.g., "Mudra ISL")
   - Click "Create"

3. **Enable Google Drive API**:
   - Go to "APIs & Services" > "Library"
   - Search for "Google Drive API"
   - Click "Enable" (FREE)

4. **Create OAuth 2.0 Credentials**:
   - Go to "APIs & Services" > "Credentials"
   - Click "Configure Consent Screen" > Choose "External" > "Create"
   - Fill App name: "Mudra ISL", User support email: your email
   - Developer contact: your email > "Save and Continue"
   - Skip "Scopes" page > "Save and Continue"
   - **IMPORTANT**: Add your email as test user > "Save and Continue"
   - Click "Back to Dashboard" (keep app in Testing mode)
   - Go back to "Credentials" tab
   - Click "Create Credentials" > "OAuth client ID"
   - Choose "Desktop app" > Name it > "Create"
   - Download the JSON file

5. **Save Credentials**:
   - Rename downloaded file to `credentials.json`
   - Place it in the project root folder (same directory as app.py)

6. **First Upload**:
   - When you first upload files, a browser window will open
   - Sign in with the SAME Google account you added as test user
   - You'll see "Google hasn't verified this app" warning
   - Click "Advanced" > "Go to Mudra ISL (unsafe)" (it's safe, it's your own app)
   - Click "Continue" to grant permissions
   - A `token.pickle` file will be created for future uploads

## Troubleshooting "Access Blocked" Error:
- Make sure you added your email as a test user in step 4
- Use the SAME email for login that you added as test user
- App must stay in "Testing" mode (don't publish it)
- Only test users can access apps in testing mode

## Usage:
- Leave "Folder ID" empty to upload to root Drive folder
- Or paste a specific folder ID from Drive URL: `drive.google.com/drive/folders/[FOLDER_ID]`
