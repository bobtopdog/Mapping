<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Mapping._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
     <div id="map" style="width:750px; height:500px;"></div>

    <!-- script can be either in the head section or anywhere below the map -->
   
    <script src="Scripts/leaflet-0.7.3.js"></script>
    <script src="Scripts/leaflet-geosearch/dist/bundle.min.js"></script>
    <main>
       <script>
	//const map = L.map('map').setView([51.505, -0.09], 13);

//L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png').addTo(map);

var L = window.L;

var map = L.map('map').setView([53.2, 5.8], 13);

L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
	maxZoom: 18,
	attribution: '&copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>'
}).addTo(map);



// instead of import {} from 'leaflet-geosearch', use the `window` global
var GeoSearchControl = window.GeoSearch.GeoSearchControl;
var OpenStreetMapProvider = window.GeoSearch.OpenStreetMapProvider;

var provider = new OpenStreetMapProvider();

var search = new GeoSearchControl({
  provider: provider,
  style: 'bar',
	showMarker: true,
	retainZoomLevel: false,
  animateZoom: true
}).addTo(map);
	
     
       </script>
    </main>

</asp:Content>
