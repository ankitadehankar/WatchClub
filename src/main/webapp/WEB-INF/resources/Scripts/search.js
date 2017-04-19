
var app = angular
        .module("myModule", [])
        .controller("myController", function ($scope) {

            var employees = [
               /* { name: "Ben", gender: "Male", salary: 55000, city: "London" },
                { name: "Sara", gender: "Female", salary: 68000, city: "Chennai" },
                { name: "Mark", gender: "Male", salary: 57000, city: "London" },
                { name: "Pam", gender: "Female", salary: 53000, city: "Chennai" },
                { name: "Todd", gender: "Male", salary: 60000, city: "London" },*/
            	
            	{id:"p04", name:"Fastrack", price:"2295"},
            	{id:"p07", name:"isfit", price:"7495"},

            	{id:"p02", name:"casio", price:"2500"},

            	{id:"p01", name:"BlackCasuals", price:"2000"},

            	{id:"p03", name:"HightCasuals", price:"1900"},

            	{id:"p06", name:"GreenCasuals", price:"2500"},

            	{id:"p05", name:"WhiteCasuals", price:"2500"},

            ];

            $scope.products = products;
        });