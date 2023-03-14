<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <link rel="stylesheet" href="css/clock.css">
        <script src="js/script.js" defer></script>
    </head>
    <body style=" box-sizing: border-box;
          font-family: Arial, Helvetica, sans-serif;
          ">
        <div style="
             display: flex;
             gap: 0.5em;
             font-size: 2.50rem;
             margin-bottom: -97px; 
             color: wheat" class="container">
            <div class="container-segment">
                <div class="segment">
                    <div class="flip-card" data-hours-tens>
                        <div class="top">2</div>
                        <div class="bottom">2</div>
                    </div>
                    <div class="flip-card" data-hours-ones>
                        <div class="top">4</div>
                        <div class="bottom">4</div>
                    </div>
                </div>
            </div>
            <div class="container-segment">
                <div class="segment">
                    <div class="flip-card" data-minutes-tens>
                        <div class="top">0</div>
                        <div class="bottom">0</div>
                    </div>
                    <div class="flip-card" data-minutes-ones>
                        <div class="top">0</div>
                        <div class="bottom">0</div>
                    </div>
                </div>
            </div>
            <div class="container-segment">
                <div class="segment">
                    <div class="flip-card" data-seconds-tens>
                        <div class="top">0</div>
                        <div class="bottom">0</div>
                    </div>
                    <div class="flip-card" data-seconds-ones>
                        <div class="top">0</div>
                        <div class="bottom">0</div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>