/* globals Chart:false, feather:false */

(() => {
  'use strict'

  feather.replace({ 'aria-hidden': 'true' })

  // Graphs
  const ctx = document.getElementById('myChart')
  // eslint-disable-next-line no-unused-vars
  const myChart = new Chart(ctx, {
    type: 'line',
    data: {
      labels: [
        'January',
        'February',
        'March',
        'April',
        'May',
        'June',
        'July',
        'August',
        'September',
        'October',
        'November',
        'December'
      ],
      datasets: [
        {
        data: [
          1533,
          2134,
          1848,
          2400,
          2348,
          2409,
          1203,
          1848,
          2400,
          2348,
          2409,
          1203
        ],
        lineTension: 0,
        backgroundColor: 'transparent',
        borderColor: 'red',
        borderWidth: 4,
        pointBackgroundColor: 'red'
      },
      {
        data: [
          4533,
          3134,
          5848,
          1400,
          6348,
          3409,
          2203,
          5848,
          1400,
          6348,
          3409,
          2203
        ],
        lineTension: 0,
        backgroundColor: 'transparent',
        borderColor: 'yellow',
        borderWidth: 4,
        pointBaBackgroundColor: 'yellow'
      },
      {
        data: [
          3533,
          4134,
          2848,
          3400,
          6348,
          8409,
          2203,
          2848,
          3400,
          6348,
          8409,
          2203
        ],
        lineTension: 0,
        backgroundColor: 'transparent',
        borderColor: 'green',
        borderWidth: 4,
        pointBackgroundColor: 'green'
      },
      {
        data: [
          4533,
          5134,
          2848,
          3400,
          5348,
          4409,
          3203,
          1848,
          5400,
          3348,
          4409,
          3203
        ],
        lineTension: 0,
        backgroundColor: 'transparent',
        borderColor: 'blue',
        borderWidth: 4,
        pointBackgroundColor: 'blue'
      }
    ]
    },
    options: {
      scales: {
        yAxes: [{
          ticks: {
            beginAtZero: false
          }
        }]
      },
      legend: {
        display: false
      }
    }
  })
})()
