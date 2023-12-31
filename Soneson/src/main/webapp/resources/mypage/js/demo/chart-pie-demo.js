// Set new default font family and font color to mimic Bootstrap's default styling
Chart.defaults.global.defaultFontFamily = 'Nunito', '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
Chart.defaults.global.defaultFontColor = '#858796';

// Pie Chart Example
var ctx = document.getElementById("myPieChart");

$.ajax({
      type: "POST",
      url: "AdminSelectMyPieChart",
      async: false,
      data: {
      },
      success: function(AdminSelectMyPieChart) {
         cate = AdminSelectMyPieChart.map(row => row.cate);
         cateCount = AdminSelectMyPieChart.map(row => row.cateCount);
         
      },
      error:function(){
         alert("들고오기 실패");
      }
   });



var myPieChart = new Chart(ctx, {
  type: 'doughnut',
  data: {
    labels: cate,
    datasets: [{
      data: cateCount,
      backgroundColor: ['#1cc88a', '#f6c23e', '#e74a3b', '#4e73df', '#36b9cc', '#6610f2', '#e83e8c', '#4e73df', '#36b9cc'],
      hoverBackgroundColor: ['#1cc88a', '#f6c23e', '#e74a3b', '#4e73df', '#36b9cc', '#6610f2', '#e83e8c', '#4e73df', '#36b9cc'],
      hoverBorderColor: "rgba(234, 236, 244, 1)",
    }],
  },
  options: {
    maintainAspectRatio: false,
    tooltips: {
      backgroundColor: "rgb(255,255,255)",
      bodyFontColor: "#858796",
      borderColor: '#dddfeb',
      borderWidth: 1,
      xPadding: 15,
      yPadding: 15,
      displayColors: false,
      caretPadding: 10,
    },
    legend: {
      display: false
    },
    cutoutPercentage: 80,
  },
});
