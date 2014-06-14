ZNMMA_iOSApp
============

A native iOS app for the MMA gym, "Zealous Nation" in Middlesex, NJ. Shows several views on a tab bar controller.

The First view has a UICollectionview to display gallery photos, with a detail view to show the full photo when clicked. 

The second view showcases the gym's programs in a tableviewcontroller. The tableviewcontroller holds subclassed
uitableviewcells to fit the necessary information. The tableviewcells can also be clicked to display a detailview of
the program

The third view shows the gym's schedule for the week. The tableviewcontroller detects the day and adjusts the schedule
accordingly on the subclassed tableviewcells

The fourth view displays the gym's instructors within the tableviewcontroller. The subclassed uitableviewcells can be
clicked on to see a detail view of the selected instructor

The fifth view displays a simple contact page with a phone number, email address, and physical addresss. All of these 
fields can be clicked for the apropriate reaction with the phone. (Clicking on the phone field would ask if you would
like to call, email would bring up email, address would bring up maps).
On the fifth view there is also a mapview that is set to the coordinates of the school, with an MKannotationview added
to the specific location of the school


There you go! Hopefully you enjoy it :)


