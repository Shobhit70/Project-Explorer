<%-- 
    Document   : me
    Created on : Aug 15, 2017, 12:01:06 PM
    Author     : shobhit pc
--%>

<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>Simple and light sign up form</title>
  <meta name="viewport" content="width=device-width, initial-scale=1"><link href='https://fonts.googleapis.com/css?family=Roboto:400,700' rel='stylesheet' type='text/css'>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  
  <link rel="stylesheet" href="hello.css">

  
</head>

<body>
  <div class="user">
    <header class="user__header">
        
        
        <form action="MechServlet" method="get">
      
        <div class="form__group">
            <input type="text" placeholder="Name" class="form__input" name="name" required/>
        </div>
          <div class="form__group">
            <input type="text" placeholder="Registration no" class="form__input" name="registration_no" required/>
        </div>
        
        <div class="form__group">
            <input type="text" placeholder="Project name" class="form__input" name="projectname" required />
        </div>
        
        <div class="form__group">
            <input type="text" placeholder="Organization" class="form__input" name="organization" required/>
       
          <div class="form__group">
              <input type="text" placeholder="Presentation(20)" class="form__input" name="presentation" required />
        </div>
          <div class="form__group">
              <input type="text" placeholder="Future Aspects(20)" class="form__input" name="future aspect" required />
        </div>
          
          <div class="form__group">
              <input type="text" placeholder="Report Format(10)" class="form__input" name="report_format" required />
        </div>
          <div class="form__group">
              <input type="text" placeholder="Learning and Outcomes(20)" class="form__input" name="learning_outcome" required />
        </div> 
          <div class="form__group">
              <input type="text" placeholder="Comments" class="form__input" name="comments" required />
          </div>
        
       
        <button class="btn" type="submit" >Save</button>
    </form>
</div>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script src="js/index.js"></script>

</body>
</html>


