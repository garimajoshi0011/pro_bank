<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <title>Customer Dashboard</title>
    <link rel="stylesheet" href="dashboard.css"> 
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script>//  start navigation

function openSection(evt, section) {
  var i, tabcontent, tablinks;
  document.getElementById('profile').style.display='none';
  tabcontent = document.getElementsByClassName("tabcontent");
  for (i = 0; i < tabcontent.length; i++) {
    tabcontent[i].style.display = "none";
  }
  tablinks = document.getElementsByClassName("tablinks");
  for (i = 0; i < tablinks.length; i++) {
    tablinks[i].className = tablinks[i].className.replace(" active", "");
  }
  document.getElementById(section).style.display = "block";
  evt.currentTarget.className += " active";
}
// end navigation

// start transfer
var modal = document.getElementById('id1');

window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
// end transfer

// loan
function calc(){
var a= document.getElementById("tenure").value;
var b= document.getElementById("Amount").value;
var c= document.getElementById("interest").value;
var g = c/100;
// var d = parseInt(b + (1+g*a));
var d = parseFloat((a*b*c)/100);
const k = parseFloat(d)+parseFloat(b);

 

document.getElementById("total").innerHTML = "Total Amount is Rs."+k;
}</script>
	<style>*{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Poppins', sans-serif;
  }
  .tab 
  {
      position: fixed;
      height: 100%;
      width: 250px;
      background: linear-gradient(to right, blueviolet, cornflowerblue);
  }
  .tab .logo{
      font-size: 2rem;
      color: white;
      margin-top: 20px;
      margin-bottom: 25px;
  }
  .tab .logo span{
      font-size: 1.5rem;
  }
  .tab button,a 
  {
    display: block;
    background-color: inherit;
    color: white;
    padding: 25px;
    width: 100%;
    border: none;
    outline: none;
    text-align: left;
    cursor: pointer;
    font-size: 18px;
    text-decoration: none;
  }
  .tab button:hover 
  {
    background-color: cornflowerblue;
  }
  .tab button.active 
  {
    background-color: cornflowerblue;
  }
  .tabcontent 
  {
    position: relative;
    background: #f5f5f5;
    min-height: 100vh;
    width: calc(100% - 240px);
    left: 240px;
    display: none;
  }
  .tabcont 
  {
    position: relative;
    background: #f5f5f5;
    min-height: 100vh;
    width: calc(100% - 240px);
    left: 240px;
    display: block;
    
  }
  .tabcontent nav{
    display: flex;
    justify-content: space-between;
    height: 80px;
    background: #fff;
    display: flex;
    align-items: center;
    position: fixed;
    width: calc(100% - 240px);
    left: 240px;
    z-index: 100;
    padding: 0 20px;
    box-shadow: 0 1px 1px rgba(0, 0, 0, 0.1);
  }
  .tabcont nav{
    display: flex;
    justify-content: space-between;
    height: 80px;
    background: #fff;
    display: flex;
    align-items: center;
    position: fixed;
    width: calc(100% - 240px);
    left: 240px;
    z-index: 100;
    padding: 0 20px;
    box-shadow: 0 1px 1px rgba(0, 0, 0, 0.1);
  }
  .tabcontent,.tabcont nav .sidebar-button{
    display: flex;
    align-items: center;
    font-size: 24px;
    font-weight: 500;
  }
  .tabcontent .dash-content{
    position: relative;
    padding-top: 105px;
  }
  .dash-content .boxes{
    display: flex;
    align-items: center;
    justify-content: space-between;
    flex-wrap: wrap;
    padding: 0 20px;
  }
  .boxes .box{
    display: flex;
    align-items: center;
    justify-content: center;
    width: 500px;
    height: 280px;
    background: #fff;
    padding: 15px 14px;
    border-radius: 20px;
    box-shadow: 0 5px 10px rgba(0,0,0,0.1);
    text-align: center;
    margin-top: 20px;
    margin-left: 20px;
  }
  .boxes .box-topic{
    font-size: 30px;
    font-weight: 500;
    margin-bottom: 10px;
  }
  .boxes i{
    font-size: 30px;
    font-weight: 500;
  }
  .dash-content .box .number{
    display: inline-block;
    font-size: 35px;
    font-weight: 500;
  }
  .clearfix::after 
  {
    content: "";
    clear: both;
    display: table;
  }
  
  /* start profile */
  .tabcont .grid-container{
    position: relative;
    padding-top: 105px;
  }
  .grid-container{
  height: 970px;
  display: grid;
  grid-template-columns: auto auto auto;
  grid-template-rows: auto auto auto;
  grid-gap: 10px;
  padding: 20px;
  gap: 30px;
  }
  .item1{
      grid-row: 1 / span 3;
      width: 100%;
  }
  .item4{
      grid-row: 2 / span 2 ;
      height: 30px;
      width: 100%;
      margin-left: 0%;
  }
  .item2{
    width: 100%;
    margin-left: 0%;
}
.item1 img{
text-align: center;
width: 240px;
position: relative;
left: 100px;
top: 150px;
}

  
  .grid-container > div {
      background-color: rgba(255, 255, 255, 0.8);
      text-align: center;
      padding: 20px 20px;
      font-size: 20px;
      border: #081D45;
      border-radius: 5px;
      border: 1px solid #ccc;
      height: 100%;
  }
  #profile table{
    border: none;
    border-collapse: collapse;
    text-align: left;
    color: #121213;
    position: relative;
    top: 30px;
    right: 50px;

  }
  #profile table td{
color: #081D45;
text-align: left;
padding: 25px;
padding-left: 2%;
border-bottom: 1px solid white;
color: grey;
  }
  /* end profile */
  
  /* start transfer */
  .tabcontent .transfer-container{
    position: relative;
    padding-top: 120px;
  }
  input[type=text], select, textarea {
    width: 40%;
    padding: 12px;
    border: 1px solid #ccc;
    border-radius: 5px;
    box-sizing: border-box;
    margin-top: 6px;
    margin-bottom: 16px;
    resize: vertical;
  }
  
  .transfer-container button{
    background-color:cornflowerblue;
    color: white;
    padding: 12px 20px;
    border: none;
    border-radius: 30px;
    cursor: pointer;
    padding-left: 310px;
    padding-right: 310px;
    margin-top: 20px;
    margin-left: 485px;
    display: block;
  }
  #close{
    background-color:cornflowerblue;
    color: white;
    padding: 12px 20px;
    border: none;
    border-radius: 30px;
    cursor: pointer;
    padding-left: 50px;
    padding-right: 50px;
    margin-top: 5px;
    margin-left: 220px;
    display: block;

  }
  .transfer-container button:hover {
    background-color: #4169E1;
    color: white;
  }
  
  .transfer-container {
    border-radius: 5px;
    padding: 20px;
    text-align: center;
    padding-top: 3000px;
  
  }
  #trans{
      padding-top: 300px;
  } 
  
  .imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
    position: relative;
    padding-top: 25px;
  }
  
  .modal {
    display: none; 
    position: fixed; 
    z-index: 1;
    left: 0;
    top: 0;
    width: 100%; 
    height: 100%; 
    overflow: auto; 
    background-color: rgb(0,0,0);
    background-color: rgba(0,0,0,0.4); 
    padding-top: 60px;
  }
  
  .modal-content {
    background-color: #fefefe;
    width: 36%; 
    height: 48%;
    margin-left: 38%;
    margin-top: 10%;
    padding-left: 60px;
    padding-right: 60px;
    border-radius: 10px;
  }
  
  .modal-content h1{
    font-size: 38px;
    font-weight: bold;
    text-align: center;
  }
  
  /* end transfer */
  
  /* start cards */
  .tabcontent .card{
    position: relative;
  }
  .cards-container {
      width: 100%;
      height: 100vh;
      background: #f5f5f5;
      font-family: 'Poppins', sans-serif;
      display: flex;
      /* align-items: center;
      justify-content: center; */
      padding-top: 120px;
  } 
  
  .card {
      position: relative;
      width: 500px;
      height: 280px;
      margin: 0px 20px;
      border-radius: 20px;
      overflow: hidden;
  }
  
  .card::before {
      content: '';
      position: absolute;
      width: 100%;
      height: 100%;
      background: linear-gradient(to right, #121213, #e5463e);
  }
  
  .card .debit_card {
      position: absolute;
      top: 20px;
      left: 25px;
      font-weight: 600;
      color: #fff;
      letter-spacing: 1px;
      font-size: 12px;
  }
  
  .card .bank {
      position: absolute;
      top: 20px;
      right: 20px;
      font-style: italic;
      color: #fff;
      letter-spacing: 1px;
  }
  
  .card .bank span {
      font-weight: 300;
  }
  
  .card .chip {
      position: absolute;
      width: 60px;
      height: 45px;
      background: #e9df4e;
      border-radius: 5px;
      top: 60px;
      left: 25px;
      border: 1px solid #000;
      overflow: hidden;
  }
  
  .card .chip h6:nth-child(1) {
      width: 25px;
      height: 15px;
      border: 1px solid #000;
      margin-top: -1px;
      border-top: 0px;
      border-left: 0px;
  }
  
  .card .chip h6:nth-child(2) {
      width: 25px;
      height: 10px;
      border: 1px solid #000;
      margin-top: -1px;
      border-top: 0px;
      border-left: 0px;
  }
  
  .card .chip h6:nth-child(3) {
      width: 25px;
      height: 10px;
      border: 1px solid #000;
      margin-top: -1px;
      border-top: 0px;
      border-left: 0px;
  }
  
  .card .chip h6:nth-child(4) {
      width: 25px;
      height: 18px;
      border: 1px solid #000;
      margin-top: -1px;
      border-top: 0px;
      border-left: 0px;
  }
  
  .card .chip h6:nth-child(5) {
      position: absolute;
      width: 20px;
      height: 10px;
      border-bottom: 1px solid #000;
      top: 0;
      left: 25px;
  }
  
  .card .chip h6:nth-child(6) {
      position: absolute;
      width: 20px;
      height: 30px;
      border-bottom: 1px solid #000;
      top: 10px;
      left: 25px;
  }
  
  .card .chip h6:nth-child(7) {
      position: absolute;
      width: 25px;
      height: 10px;
      border: 1px solid #000;
      top: 15px;
      left: 45px;
  }
  
  .card .chip h6:nth-child(8) {
      position: absolute;
      width: 25px;
      height: 10px;
      border: 1px solid #000;
      border-top: 0px;
      top: 25px;
      left: 45px;
  }
  
  .card .chip h6:nth-child(9) {
      position: absolute;
      width: 25px;
      height: 15px;
      border: 1px solid #000;
      border-top: 0px;
      top: 35px;
      left: 45px;
  }
  
  .card .number {
      position: absolute;
      width: 300px;
      height: 20px;
      top: 130px;
      left: 25px;
      display: flex;
      align-items: center;
      justify-content: space-between;
  }
  
  .card .number h6 {
      color: #fff;
      font-size: 25px;
      font-family: Digital_Font;
      letter-spacing: 3px;
  }
  
  .card .wave {
      position: absolute;
      width: 30px;
      height: 30px;
      top: 124px;
      right: 20px;
  }
  
  .card .ex_date {
      position: absolute;
      top: 165px;
      left: 25px;
      color: #fff;
      display: flex;
      align-items: center;
  }
  
  .card .ex_date span {
      font-size: 9px;
      font-weight: 600;
      line-height: 10px;
  }
  
  .card .ex_date h3 {
      font-size: 16px;
      font-weight: 600;
      line-height: 12px;
      margin-left: 8px;
      display: flex;
      align-items: center;
  }
  
  .card .ex_date h3 span {
      font-size: 12px;
      margin: 0px 2px;
  }
  
  .card .name {
      position: absolute;
      top: 195px;
      left: 25px;
      font-size: 20px;
      font-weight: 400;
      letter-spacing: 3px;
      color: #fff;
  }
  
  .card .cvv {
      position: absolute;
      color: #fff;
      top: 230px;
      left: 25px;
      font-size: 13px;
      font-weight: 500;
      display: flex;
      align-items: center;
  }
  
  .card .cvv h5 {
      font-size: 14px;
      margin-left: 5px;
      background: #121213;
      padding: 1px 10px;
      border-radius: 3px;
      letter-spacing: 1px;
  }
  
  .card .visa {
      position: absolute;
      top: 200px;
      right: 5px;
      width: 110px;
      height: 80px;
  }
  
  .card:nth-child(2)::before {
      content: '';
      position: absolute;
      width: 100%;
      height: 100%;
      background: linear-gradient(to right, #3e52e5, #6495ed);
  }
  /* end cards */
  
  /* start transaction history */
  .tabcontent .transaction-container 
  {
    position: relative;
    padding-top: 120px;
  }
table, th, td 
{
overflow-x: auto;
border-bottom: 1px solid #ddd;
border-collapse: collapse;
margin-left: 45px;
padding: 15px;
}
th
{
  background-color: cornflowerblue;
  color: white;
  font-size: 20px;
}
td{
text-align: center;
color: SlateGray;
font-size: 18px;
}
  /* end transaction history */

  /* loan */
  .applyl{

    padding: 10px 25px;
    color:white;
    background-color:#6495ed ;
    border:2px solid rgb(110, 173, 236);
    border-radius: 40px;
    margin-left: 1250px;
    text-decoration: none;
  }
  #tenure,#Amount{
    height: 40px;
    width: 650px;
  }
  #interest{
font-size: 15px;
font-weight: 300;
  }</style>
  </head>
  <body>
</head>
<body>

  
    <h2 style="color: cornflowerblue;">INTEREST CALCULATOR</h2><br>
    <select>
      <option><h3>Home Loan</h3></option>
      <option>Gold Loan</option>
      <option>Personal Loan</option>
      <option>Business Loan</h3></option>
      <option>Education Loan</option>
      <option>Vehicle Loan</option>
    </select><br>
    <input type="number" id="interest" placeholder="Interest" required><br><br><br>
    <input type="number" id="tenure" placeholder="Tenure(in years)" required ><br><br>
    <input type="number" id="Amount" placeholder="Amount" required><br><br><br>

  <h1><div id="total"></div></h1>
    <button onclick="calc()">Calculate</button>

   
</body>
</html>

