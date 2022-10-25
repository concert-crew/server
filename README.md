# Server-Concert Crew

<ul>
<li><b>Server</b> is a backend <b>Rails</b> API and database deployed via Heroku and consumed by our Concert Crew frontend application.</li>

<li>Server exposes API endpoints that hold a user's information, events, and friends.</li>
 
<li>This application utilizes <b>GraphQL</b> to share and update user, event, and friends data which is stored in a normalized <b>PostgreSQL</b> database.</li></ul>

<!-- TABLE OF CONTENTS -->
<h2 id="table-of-contents"> :book: Table of Contents</h2>

<details open="open">
  <summary>Table of Contents</summary>
  <ol>
    <li><a href="#techical-requirements"> ➤ Technical Requirements</a></li>
    <li><a href="#project-files-description"> ➤ Project Files Description</a></li>
    <li><a href="#tm-api"> ➤ Ticketmaster API</a></li>
    <li><a href="#db-schema"> ➤ Database Schema</a></li>
    <li><a href="#endpoint"> ➤ Server API Endpoint</a></li>
    <li><a href="#credits"> ➤ Credits</a></li>
  </ol>
</details>

<!-- TECHNICAL REQUIREMENTS -->
<h2 id="techical-requirements"> 💻 Technical Requirements</h2>
<ul>
  <li>Ruby 2.7.4</li>
  <li>Rails 5.2.8</li>
  <li>RSpec-Rails 5.1.2</li>
  <li>GraphQL</li>
  <li>Faraday</li>
  <li>Figaro</li>
  <li>Faker</li>
  <li>Webmock</li>
  <li>VCR</li>
  <li>Capybara</li>
  <li>SimpleCov</li>
  <li>Launchy</li>
  <li>Orderly</li>
  <li>Shoulda-Matchers</li>
  <li>Postman</li>
  </ul>
  
<!-- PROJECT FILES DESCRIPTION -->
<h2 id="project-files-description"> :floppy_disk: Project Files Description</h2>
<ul>
  <li><b>app/controllers/api/v1</li></b>
   <ol>
  <li>There is one controller, <b>events_controller.rb</b>, which has one action (show) that serves as a single API endpoint for frontend to access a Json response with relevant events based on keyword.</li>
   <li>When the HTTP request hits the <b>events_controller.rb</b>, it starts the backend's request-response to Ticketmaster's API via a service call through a facade.</li></ol><br>
  <li><b>app/services</li></b>
   <ol>
  <li><i>Services</i> hold one file, <b>events_service.rb</b>, which is initiated via a controller action passed through a facade</li>
  <li><b>events_service.rb</b> makes a call to Ticketmaster's API and uses a Ticketmaster API key which can only be obtained by signing up on Ticketmaster.</li>
   <li>The request to Ticketmaster's API is formatted to focus on music events in the United States only and is limited to the first 10 events returned.</li></ol><br>
 <li><b>app/poros</li></b>
   <ol>
   <li><b>poro_event.rb</b> transforms the JSON response from Ticketmaster into data that is serialized and exposed via an endpoint for frontend consumption.</li>
<li>Relevant data captured from the Ticketmaster response includes <i>event name, id, url to purchase tickets, image, date and time, venue name,</i> and <i>geodata</i>.</li></ol><br></ul>
  
<!-- TICKETMASTER API -->
<h2 id="tm-api"> :open_file_folder: Ticketmaster API</h2>
<ul>
<li>Ticketmaster's public API is called and the response is transformed into a RESTful endpoint consumed by our frontend.</li>
<li>To learn more about the Ticketmaster API and signup for an access key, visit <a href='https://developer.ticketmaster.com/products-and-docs/apis/getting-started/'> Ticketmaster's Developer Portal</a> .</li>
</ul>

<!-- DATABASE SCHEMA -->
<h2 id="db-schema"> :desktop_computer: Database Schema</h2>
<ul>
<li>The database schema includes tables for <i>users, events, user_events</i>(joins users and events), and <i>friends</i>.</li>
</ul>


<img width="1272" alt="Screen Shot 2022-10-24 at 7 32 24 PM" src="https://user-images.githubusercontent.com/95776577/197650396-f14452c8-ff99-4e23-983f-abac65410fd6.png">

<!-- SERVER API ENDPOINT -->
<h2 id="endpoint"> :book: Server API Endpoint</h2>
<ul>
<li>Once the repo has been forked and cloned, use Postman to hit the Concert Crew's API endpoint.  Follow steps below to get started.</li>
 <ol><li><pre><code>$ bundle install</code></pre></li>
  <li><pre><code>$ rails db:{create,migrate,seed}</code></pre></li>
  <li><pre><code>$ rails s</code></pre></li></ol>
  <li> Now, launch Postman and make a query(note-<i>Ticketmaster API Key must be included in project file and Postman</i>).</li></ul>
  
  
  <img width="1368" alt="Screen Shot 2022-10-25 at 2 53 14 PM" src="https://user-images.githubusercontent.com/95776577/197858168-eb9edb1d-19b2-4a3b-a15d-342e2b90be15.png">

 </ol></ul>
 
 <!-- CREDITS -->
<h2 id="credits"> :scroll: Credits</h2>
<h3>Shirley DeCesari</h3>

[![GitHub Badge](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white)](https://github.com/sdecesari)
[![LinkedIn Badge](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/shirley-decesari-760950157/)

<h3>John Santosuosso</h3>

[![GitHub Badge](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white)](https://github.com/johnsantosuosso)
[![LinkedIn Badge](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/john-santosuosso)

<h3>Mayu Takeda</h3>

[![GitHub Badge](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white)](https://github.com/okayama-mayu)
[![LinkedIn Badge](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](www.linkedin.com/in/mayu-takeda)

<h3>Rue Zheng</h3>

[![GitHub Badge](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white)](https://github.com/ruezheng)
[![LinkedIn Badge](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/ruezheng/)

