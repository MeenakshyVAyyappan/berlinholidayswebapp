# 🏨 Room Management Guide - Berlin Holidays Admin Dashboard

This guide explains how to manage rooms in the Berlin Holidays admin dashboard. The room management system is designed to match exactly what customers see on the website.

## 📋 Table of Contents
- [Overview](#overview)
- [Database Setup](#database-setup)
- [Room Fields Explained](#room-fields-explained)
- [Adding a New Room](#adding-a-new-room)
- [Editing a Room](#editing-a-room)
- [Managing Room Images](#managing-room-images)
- [Best Practices](#best-practices)

---

## 🎯 Overview

The Room Types section allows you to manage all room categories displayed on your website. Each room type you create in the admin dashboard will appear on the website's room listing page with all the details you provide.

**What customers see on the website:**
- Room image with price badge
- Category label (e.g., "LUXURY ROOM")
- Room name (e.g., "Delux Family Rooms")
- Room size (e.g., "500 SQ FT/Rooms")
- Bed type (e.g., "2 King Bed")
- Star rating
- Amenities list
- Check-in/Check-out times
- House rules
- Children & Extra Beds policy

---

## 🗄️ Database Setup

Before using the room management system, you need to run the database migration to add the new fields.

### Step 1: Go to Supabase Dashboard
1. Visit: https://app.supabase.com/project/egqexbjvccihrvcrrydi
2. Click on "SQL Editor" in the left sidebar

### Step 2: Run the Migration
1. Click "New Query"
2. Copy the contents of `database_migrations/add_room_details_fields.sql`
3. Paste into the SQL editor
4. Click "Run" to execute the migration

This will add the following new columns to your `room_types` table:
- `category_label` - Display label for room category
- `bed_type` - Type and number of beds
- `star_rating` - Star rating (1-5)
- `check_in_time` - Check-in time information
- `check_out_time` - Check-out time information
- `early_check_in` - Whether early check-in is available
- `house_rules` - House rules for the room
- `children_policy` - Children and extra beds policy

---

## 📝 Room Fields Explained

### Required Fields (marked with *)

#### **Room Name** *
- The main title of the room
- Example: "Delux Family Rooms", "Double Suite Rooms", "Suprior Bed Rooms"
- This appears as the main heading on the website

#### **Base Price (₹)** *
- The base price per night in Indian Rupees
- Example: 5000, 4500, 5500
- This appears in the price badge on the website (e.g., "$450 | Night")

#### **Capacity** *
- Maximum number of guests
- Example: 2, 4, 5
- This appears in the amenities section

### Optional Fields

#### **Category Label**
- A short label that appears above the room name
- Example: "LUXURY ROOM", "DELUXE SUITE", "PREMIUM ROOM"
- Displayed in uppercase with accent color (#c49e72)

#### **Size (sq ft)**
- Room size information
- Example: "500 SQ FT/Rooms", "450 sq ft", "300 SQ FT/Rooms"
- Displayed in the room details

#### **Bed Type**
- Type and number of beds
- Example: "2 King Bed", "1 Queen Bed", "2 Single Beds"
- Displayed with a bed icon in the room details

#### **Star Rating**
- Quality rating from 1 to 5 stars
- Default: 5 stars
- Displayed as star icons (★★★★★)

#### **Total Rooms**
- Number of rooms of this type available
- Example: 10, 5, 15
- Used for availability management

#### **Check-in Time**
- Check-in time information
- Example: "9:00 AM - anytime", "Check-in from 9:00 AM - anytime"
- Displayed in the room details page

#### **Check-out Time**
- Check-out time information
- Example: "Before noon", "Check-out from 9:00 AM - anytime"
- Displayed in the room details page

#### **Amenities**
- Comma-separated list of amenities
- Example: "WiFi, AC, TV, Mini Bar, Swimming Pool, Gym facilities"
- Each amenity is displayed as a tag on the room card
- Full list appears on the room details page

#### **Description**
- Detailed description of the room
- Example: "Professionally deliver fully researched scenarios with turnkey communities..."
- Displayed on the room details page

#### **House Rules**
- Rules and regulations for the room
- Example: "No smoking, No pets, Quiet hours from 10 PM to 7 AM"
- Displayed in the "House Rules" section on the room details page

#### **Children & Extra Beds Policy**
- Policy regarding children and extra beds
- Example: "Children of all ages are welcome. Extra beds available upon request."
- Displayed in the "Children & Extra Beds" section on the room details page

---

## ➕ Adding a New Room

### Step 1: Navigate to Room Types
1. Log in to the admin dashboard
2. Click on "Room Types" in the sidebar

### Step 2: Click "Add Room Type"
1. Click the green "Add Room Type" button in the top right
2. A modal form will appear

### Step 3: Fill in the Details

**Basic Information:**
1. Enter the **Room Name** (e.g., "Delux Family Rooms")
2. Enter the **Category Label** (e.g., "LUXURY ROOM")
3. Enter the **Base Price** (e.g., 4500)

**Room Specifications:**
4. Set the **Capacity** (e.g., 4 guests)
5. Enter the **Size** (e.g., "500 SQ FT/Rooms")
6. Enter the **Bed Type** (e.g., "2 King Bed")
7. Select the **Star Rating** (1-5 stars)
8. Enter the **Total Rooms** (e.g., 10)

**Timing Information:**
9. Enter **Check-in Time** (e.g., "9:00 AM - anytime")
10. Enter **Check-out Time** (e.g., "Before noon")

**Additional Details:**
11. Enter **Amenities** (comma-separated, e.g., "WiFi, AC, TV, Mini Bar")
12. Enter **Description** (detailed room description)
13. Enter **House Rules** (rules and regulations)
14. Enter **Children & Extra Beds Policy**

### Step 4: Upload Images
1. Click "Upload Image" button
2. Select a high-quality image (recommended: 1200x800px, max 5MB)
3. Wait for upload to complete
4. Repeat to add multiple images
5. The first image will be the primary image shown on the website
6. Hover over images to see the delete button

### Step 5: Save
1. Click "Save & Publish" to create the room
2. The room will immediately appear on the website

---

## ✏️ Editing a Room

### Step 1: Find the Room
1. Navigate to "Room Types" in the admin dashboard
2. Find the room card you want to edit

### Step 2: Click Edit
1. Click the "Edit" button (with pencil icon) on the room card
2. The edit modal will open with all current values

### Step 3: Make Changes
1. Update any fields you want to change
2. Add or remove images as needed
3. Click "Save & Publish" to save changes

### Step 4: Delete a Room (if needed)
1. Click the trash icon on the room card
2. Confirm the deletion
3. The room will be removed from the database and website

---

## 🖼️ Managing Room Images

### Image Requirements
- **Format:** JPG, PNG, or WebP
- **Recommended Size:** 1200x800px (3:2 aspect ratio)
- **Maximum File Size:** 5MB per image
- **Quality:** High-resolution, well-lit photos

### Best Practices for Images
1. **First Image is Primary:** The first image uploaded will be the main image shown on the room listing page
2. **Multiple Angles:** Upload 3-5 images showing different angles of the room
3. **Show Amenities:** Include images of key amenities (bathroom, view, etc.)
4. **Good Lighting:** Use well-lit, professional-looking photos
5. **Consistent Style:** Maintain a consistent photography style across all rooms

### Adding Images
1. Click "Upload Image" in the room form
2. Select an image from your computer
3. Wait for the upload to complete
4. The image will appear in the preview grid

### Removing Images
1. Hover over the image you want to remove
2. Click the red trash icon that appears
3. The image will be removed from the room

### Reordering Images
- Currently, images are displayed in the order they were uploaded
- To change the order, you need to remove and re-upload images
- The first image in the list is always the primary image

---

## ✅ Best Practices

### 1. Consistent Naming
- Use clear, descriptive room names
- Follow a consistent naming pattern (e.g., "Delux Family Rooms", "Double Suite Rooms")
- Avoid abbreviations that customers might not understand

### 2. Accurate Pricing
- Keep prices up-to-date
- Use the base price for standard rates
- Use Rate Plans for seasonal pricing and discounts

### 3. Detailed Descriptions
- Write clear, engaging descriptions
- Highlight unique features
- Mention nearby attractions or views
- Keep descriptions between 100-200 words

### 4. Complete Amenities List
- List all amenities, even basic ones
- Use consistent naming (e.g., always "WiFi" not "Wi-Fi" or "Wifi")
- Common amenities: WiFi, AC, TV, Mini Bar, Swimming Pool, Gym facilities, Free Parking, Breakfast

### 5. Clear Policies
- Be specific about check-in/check-out times
- Clearly state house rules
- Explain children and extra bed policies
- Include cancellation policies if applicable

### 6. Regular Updates
- Review room information quarterly
- Update images if rooms are renovated
- Adjust prices based on season and demand
- Remove rooms that are no longer available

### 7. Quality Control
- Preview how rooms appear on the website
- Check for typos and formatting issues
- Ensure all images load correctly
- Test on mobile devices

---

## 🔗 Related Features

### Rate Plans
- Create seasonal pricing
- Set up special discounts
- Manage minimum stay requirements
- Navigate to: Admin Dashboard → Rate Plans

### Room Availability
- View availability calendar
- Block dates for maintenance
- Track bookings
- Navigate to: Admin Dashboard → Room Availability

### Special Offers
- Create promotional offers
- Set up early bird discounts
- Manage limited-time deals
- Navigate to: Admin Dashboard → Special Offers

---

## 🆘 Troubleshooting

### Images Not Uploading
- Check file size (must be under 5MB)
- Ensure file format is JPG, PNG, or WebP
- Check your internet connection
- Try a different browser

### Changes Not Appearing on Website
- Clear your browser cache
- Wait a few seconds and refresh
- Check if the room is marked as active
- Verify you clicked "Save & Publish"

### Room Not Showing on Website
- Ensure the room has at least one image
- Check that all required fields are filled
- Verify the room is not marked as inactive
- Check the database connection

---

## 📞 Support

If you encounter any issues or have questions:
1. Check this guide first
2. Review the database schema in `ADMIN_DATABASE_SCHEMA.md`
3. Check the Supabase dashboard for errors
4. Contact your developer for technical support

---

**Last Updated:** November 8, 2025
**Version:** 1.0

