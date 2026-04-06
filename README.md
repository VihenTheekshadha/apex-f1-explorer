# Oracle APEX F1 Explorer App

This Oracle APEX application pulls **live Formula 1 data** using the free **Jolpica F1 API**. No database tables needed just pure API magic!

## Features Included
- **Live Driver Standings** – Real-time Drivers championship standings with points
- **Driver Details** – Basic driver detailes fetched from the Jolpica API and wikipedia combined. 
- **Circuit Info** – Basic track details of trackes raced in current season fetched from the Jolpica API and wikipedia combined.

## features in oracle APEX that was mainly used
- **Web Source Modules** – Fetches data straight from the API
- **Interactive Reports** – display the fetched data, some custom modifications has been done.
- **Map Regions** – locations of the circuits marked on the map region
- **cards** – Driver and track details visualized using cards

## Screenshots
<img width="1910" height="909" alt="image" src="https://github.com/user-attachments/assets/68d51fa8-5bd9-41c5-b317-008a40323cec" />
<img width="1911" height="916" alt="image" src="https://github.com/user-attachments/assets/a8939b63-2c0e-4bb8-803a-2da3eac531a6" />
<img width="1913" height="910" alt="image" src="https://github.com/user-attachments/assets/10cd0706-bce9-498e-a442-f71376bc9174" />
<img width="1909" height="906" alt="image" src="https://github.com/user-attachments/assets/db26c637-0870-43c7-9f30-c3e253a8eddd" />


## Installation
Run the `apex-f1-explorer.sql` file to import and install everything.

## Why I Built This
Wanted to dive deeper into **Web Source Modules** and experiment with **Interactive Grid row highlighting**. here the Jolpica API does not provide images, so i took the Wiki URL which is available in jolpica API and combined it with wikipedia API to fetch the images, that way we do not have to store the images on the database itslef. Turned out to be a fun way to track F1 while learning APEX!

### References
https://github.com/jolpica/jolpica-f1
