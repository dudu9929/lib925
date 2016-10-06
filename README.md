# README 
# Library booking system

Preconfigured Admin:
Email:   Dage@ncsu.edu
Password: dagedage

You can use preconfigured admin to log in as an admin. 



When logged in as Admin:
Welcome Page: click Main Page button in navigation bar, you can enter the welcome page for this booking system.
Edit her/his profile : Click the Edit Your Profile button in navigation bar, you can change the Name, E-mail and passward for this user.
Manage Admins:  (1) Click the New Admin button in navigation bar, you can add a new admin user to this system
                (2) Click the All Users button in navigation bar, you can see all the user's profile details. You can also edit or delete a user by "edit" or "destroy"
			    (3) Click on My Bookings button in navigation bar, you can see all your bookings. You can delete or edit your bookings here.
				(4) Click on All History button in navigation bar, you can see all the booking history in this booking system.
				
				
Manage Rooms: (1) Click the All Rooms button in navigation bar, you can see all the rooms in the system.
              (2) You can add a room by clicking on the New Room botton.
			  (3) You can click on the Show room information button to see the details of a room
			  (4) You can edit or delete a room using the Edit and Delete button
			  (5) You can click on the Show booking history button to see the history of all bookings of a room.
			  (6) You can booking a room for yourself clicking on Add Booking button.
			  (7) You can search for a room by Name, Building, Size or Status by the searching forms below.
			  

			  
Manage Library Members:  (1) Click the All Users button in navigation bar, you can see all the user's profile details
                             You can edit the profile of these users or delete these users except the user itself and the preconfigured admin.
                         (2) Click the See his/her booking history, you can see the user's history.
						     Click the See his/her upcoming bookings, you can see the user's bookings in the future.
						 (3) Click the book for him/her , the admin can book rooms for the members.
						 
						 

You can register as a library member 

When logged in as a library member: (1) You can edit your profile by clicking on Edit Profile button.
                                    (2) Click the All Rooms button in navigation bar, you can see all the rooms in the system.
                                    (3) You can search for a room by Name, Building, Size or Status by the searching forms below.
                                    (4) You can click on the Show room information button to see the details of a room
									(5) You can booking a room for yourself clicking on Add Booking button.
									(6) You can see all your bookings clicking on My Booking button in navigation bar. You can edit or delete your booking here.
									(7) Click on My Bookings button in navigation bar, you can see all your bookings. You can delete or edit your bookings here.
									
									
edge case scenarios:

(1)  If the admin deleted a member, all the bookings in the future and booking history of that member are also deleted.
(2)  If the admin deleted a room, all the bookings in the future and booking history of that room are also deleted.
(3)  If an admin who is not the preconfigured admin tries to delete itself or delete the preconfigured admin, the system will pop up an error message. And it can not delete what it want successfully.
(4)  If the preconfigured admin tries to delete itself, the system will pop up an error,too. The attempt will be prevented.
(5)  If a user tries to book a room ahead of the present time or 7 days after present time, there will also be an error. This attempt will be unsuccessfull.