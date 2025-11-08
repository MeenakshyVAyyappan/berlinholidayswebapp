# 🚀 Quick Start Guide - Room Management

**Get started with room management in 5 minutes!**

---

## ⚡ Step 1: Update Database (One-time setup)

### 1.1 Open Supabase Dashboard
Visit: https://app.supabase.com/project/egqexbjvccihrvcrrydi

### 1.2 Run Migration
1. Click **"SQL Editor"** in the left sidebar
2. Click **"New Query"**
3. Copy the SQL from `database_migrations/add_room_details_fields.sql`
4. Paste into the editor
5. Click **"Run"**
6. You should see: "Success. No rows returned"

✅ **Done!** Your database is now ready.

---

## 🏨 Step 2: Add Your First Room

### 2.1 Navigate to Room Types
1. Log in to admin dashboard
2. Click **"Room Types"** in the sidebar

### 2.2 Click "Add Room Type"
Click the green **"Add Room Type"** button in the top right.

### 2.3 Fill in Basic Information

**Required fields (marked with *):**

```
Room Name*: Delux Family Rooms
Category Label: LUXURY ROOM
Base Price (₹)*: 4500
Capacity*: 4
```

### 2.4 Add Room Details

```
Size (sq ft): 500 SQ FT/Rooms
Bed Type: 2 King Bed
Star Rating: 5 Stars (select from dropdown)
Total Rooms: 10
```

### 2.5 Set Check-in/Check-out Times

```
Check-in Time: 9:00 AM - anytime
Check-out Time: Before noon
```

### 2.6 Add Amenities

```
Amenities: WiFi, AC, TV, Mini Bar, Swimming Pool, Gym facilities
```

### 2.7 Write Description

```
Description: 
Professionally deliver fully researched scenarios with turnkey 
communities. Competently unleash empowered applications without 
seamless data. Uniquely underwhelm quality outsourcing before 
transparent relationships.
```

### 2.8 Add Policies

```
House Rules:
No smoking
No pets allowed
Quiet hours from 10 PM to 7 AM
Check-in requires valid ID

Children & Extra Beds Policy:
Children of all ages are welcome
Extra beds available upon request
Additional charges may apply for extra beds
Maximum 2 extra beds per room
```

### 2.9 Upload Images
1. Click **"Upload Image"**
2. Select a room image (JPG/PNG, max 5MB)
3. Wait for upload to complete
4. Repeat to add 3-5 images
5. First image will be the main image

### 2.10 Save
Click **"Save & Publish"** at the bottom.

✅ **Done!** Your room is now live on the website!

---

## 👀 Step 3: View Your Room on the Website

### 3.1 Check Room Listing Page
Visit: http://localhost:5175/room

You should see your room with:
- Room image
- Price badge ($450 | Night)
- Category label (LUXURY ROOM)
- Room name (Delux Family Rooms)
- Room size (500 SQ FT/Rooms)
- Bed type (2 King Bed)
- Star rating (★★★★★)

### 3.2 Check Room Details Page
Click "View Details" on your room card.

You should see:
- Image gallery with all uploaded images
- Full description
- Check-in/Check-out times
- House rules
- Children & Extra Beds policy
- Amenities list

---

## ✏️ Step 4: Edit a Room

### 4.1 Find the Room
Go to Admin Dashboard → Room Types

### 4.2 Click Edit
Click the **"Edit"** button (pencil icon) on the room card.

### 4.3 Make Changes
Update any fields you want to change.

### 4.4 Save
Click **"Save & Publish"**.

✅ **Done!** Changes are immediately visible on the website.

---

## 🖼️ Step 5: Manage Images

### Add More Images
1. Edit the room
2. Click **"Upload Image"**
3. Select image
4. Wait for upload
5. Click **"Save & Publish"**

### Remove Images
1. Edit the room
2. Hover over the image you want to remove
3. Click the red trash icon
4. Click **"Save & Publish"**

### Change Primary Image
The first image in the list is always the primary image.
To change it:
1. Remove all images
2. Upload images in the desired order
3. The first uploaded image becomes primary

---

## 📋 Quick Reference: Required vs Optional Fields

### ✅ Required Fields (Must fill)
- Room Name
- Base Price
- Capacity

### 💡 Recommended Fields (Should fill)
- Category Label
- Size
- Bed Type
- Star Rating
- Images (at least 1)
- Amenities
- Description

### 📝 Optional Fields (Nice to have)
- Total Rooms
- Check-in Time
- Check-out Time
- House Rules
- Children Policy

---

## 🎯 Example Room Data

Copy this example to get started quickly:

```
Room Name: Delux Family Rooms
Category Label: LUXURY ROOM
Base Price: 4500
Capacity: 4
Size: 500 SQ FT/Rooms
Bed Type: 2 King Bed
Star Rating: 5 Stars
Total Rooms: 10

Check-in Time: 9:00 AM - anytime
Check-out Time: Before noon

Amenities: WiFi, AC, TV, Mini Bar, Swimming Pool, Gym facilities, Free Parking, Breakfast

Description:
Experience luxury and comfort in our spacious Delux Family Rooms. 
Perfect for families, these rooms feature modern amenities and 
elegant decor. Enjoy stunning views and premium facilities during 
your stay.

House Rules:
• No smoking in rooms
• No pets allowed
• Quiet hours: 10 PM - 7 AM
• Valid ID required at check-in
• Damage deposit may be required

Children & Extra Beds Policy:
• Children of all ages welcome
• Extra beds available on request
• Additional charges apply for extra beds
• Maximum 2 extra beds per room
• Cribs available for infants
```

---

## 🎨 Image Guidelines

### Best Practices:
- **Size:** 1200x800px (3:2 ratio)
- **Format:** JPG or PNG
- **File Size:** Under 5MB
- **Quality:** High resolution, well-lit
- **Quantity:** 3-5 images per room

### What to Photograph:
1. **Main room view** (wide angle)
2. **Bed area** (close-up)
3. **Bathroom** (clean, well-lit)
4. **Amenities** (TV, desk, etc.)
5. **View** (window/balcony view)

---

## ⚠️ Common Mistakes to Avoid

### ❌ Don't:
- Leave required fields empty
- Upload low-quality images
- Use inconsistent naming
- Forget to click "Save & Publish"
- Upload images over 5MB

### ✅ Do:
- Fill all recommended fields
- Use high-quality images
- Keep naming consistent
- Preview on website after saving
- Optimize images before upload

---

## 🆘 Troubleshooting

### Problem: Images not uploading
**Solution:**
- Check file size (must be under 5MB)
- Check file format (JPG/PNG only)
- Check internet connection
- Try a different browser

### Problem: Changes not showing on website
**Solution:**
- Clear browser cache (Ctrl+F5)
- Wait a few seconds and refresh
- Check if you clicked "Save & Publish"
- Verify database connection

### Problem: Room not appearing on website
**Solution:**
- Ensure room has at least one image
- Check all required fields are filled
- Verify room is not marked as inactive
- Check browser console for errors

---

## 📚 Need More Help?

### Detailed Guides:
- **`ROOM_MANAGEMENT_GUIDE.md`** - Complete user guide
- **`ROOM_FIELDS_MAPPING.md`** - Field reference

### Technical Documentation:
- **`ROOM_MANAGEMENT_SUMMARY.md`** - Implementation details
- **`ADMIN_DATABASE_SCHEMA.md`** - Database schema

---

## ✅ Checklist: Your First Room

Use this checklist to ensure you've set up everything correctly:

- [ ] Database migration completed
- [ ] Room name entered
- [ ] Category label added
- [ ] Base price set
- [ ] Capacity specified
- [ ] Room size entered
- [ ] Bed type specified
- [ ] Star rating selected
- [ ] At least 3 images uploaded
- [ ] Amenities listed
- [ ] Description written
- [ ] Check-in time set
- [ ] Check-out time set
- [ ] House rules added
- [ ] Children policy added
- [ ] Clicked "Save & Publish"
- [ ] Verified room appears on website
- [ ] Checked room details page
- [ ] Tested on mobile device

---

## 🎉 You're All Set!

Congratulations! You now know how to:
- ✅ Add new rooms
- ✅ Edit existing rooms
- ✅ Upload and manage images
- ✅ Set all room details
- ✅ Verify rooms on the website

**Next Steps:**
1. Add all your room types
2. Upload high-quality images
3. Set up rate plans for seasonal pricing
4. Create special offers for promotions

---

**Questions?** Check the detailed guides in the documentation folder.

**Last Updated:** November 8, 2025

