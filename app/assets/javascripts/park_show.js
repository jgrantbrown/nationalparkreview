// $( document ).on('turbolinks:load', function(){
//
//   $("#review-form").on('submit', (e) =>{
//           e.preventDefault();
//           debugger;
//           var title = $("#review_title").val()
//           var comment = $("#review_comment").val()
//           $.ajax({
//               type: "POST",
//               url: '/reviews',
//               data: {review: {title: title, comment: comment},
//               dataType: 'json',
//               success: function(response){ console.log('response recieved');},
//           }
//
//         })
// }
