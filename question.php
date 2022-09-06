<?php
require 'quiz.php';
/**/
?>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <title>QUIZ</title>
    <link type="text/css" rel="stylesheet" href="css/question.css" />

</head>

<body>
    <header>
        <div class="container">
            <h1 class="nav">QUIZ</h1>
        </div>
    </header>
    <section>
        <ul id="nav">

            <li>
                <div class="dropdown">
                    INFORMATION
                    <div class="dropdown-content">
                        <h3>information for quiz</h3>
                        <p>
                            quiz contains 4 sectons with questions from various topics.<br>
                            each question contain choices and you have to select and submit <br>
                            correct one.<br><br>
                        </p>
                        <h3>marking scheme</h3>
                        <p>
                            for correct response : +4<br>
                            for incorrect response : -2 <br>
                            no response : -1 <br>
                        </p>
                    </div>
                </div>                
            </li>
            <li <?php if ($_SESSION['ans'] == 'correct') { echo 'style="background-color:yellowgreen;"';  } else if ($_SESSION['ans'] == 'wrong') {     echo 'style="background-color:red;"';} else if ($_SESSION['ans'] == 'none') {  echo 'style="background-color:lightblue;"';}?>> SCORE : <?php echo $user['score'] ?></li>
            <li> <a href="logout.php" class="buttton">LOG OUT</a></li>
        </ul>
    </section>
    <div class="clear"></div>
    <main>
        <ul class="flex">
            <li id="form">
                <div class="container">
                    <div class="current" style="text-align:center;color:red;">Question</div>
                    <p class="question" style="color:white">
                        <strong>
                            <?php
                            $qn = $on_question + 1;
                            echo $qn;
                            echo '.';
                            ?>
                            <?php echo $question['question']; ?>
                        </strong>
                    </p>
                    <form method="POST" action="process.php">
                        <ul class="choices">
                            <strong>
                                <li><input name="choice" type="radio" value="1" />A.<?php echo $choices['choice1']; ?></li>
                                <li><input name="choice" type="radio" value="2" />B.<?php echo $choices['choice2']; ?></li>
                                <li><input name="choice" type="radio" value="3" />C.<?php echo $choices['choice3']; ?></li>
                                <li><input name="choice" type="radio" value="4" />D.<?php echo $choices['choice4']; ?></li>
                            </strong>
                        </ul>
                        <input type="submit" value="submit" class="button" />

                    </form>
                </div>
            </li>
            <li id="leaderboard">
                <div>
                    <h2 style="text-align:center;">LEADERBOARD</h2>
                    <ul class="leaders">
                        <?php
                        for ($x = 0; $x < 4; $x++) {

                            $query = "SELECT * FROM `users` WHERE `users`.`score` = $leaderS[$x]";
                            $result = mysqli_query($conn, $query);
                            $name = $result->fetch_assoc();

                            if ($x == 0) {
                                $leader[$x] = (string)$name['username'];
                            } else {

                                $length = count($leader);

                                for ($i = 0; $i < $length; $i++) {

                                    if ((string)$name['username'] == $leader[$i]) {

                                        $query = "SELECT * FROM `users` WHERE `users`.`score` = $leaderS[$x] AND `users`.`username`<>'$leader[$i]'";
                                        $result = mysqli_query($conn, $query);
                                        $name = $result->fetch_assoc();
                                    }
                                }

                                $leader[$x] = (string)$name['username'];
                            }
                            ?>
                            <li>
                                <?php
                                echo $leader[$x];
                                echo "<br>";
                                echo " SCORE = ";
                                echo $leaderS[$x];
                                echo "<br>";
                            }
                            ?>
                        </li>
                    </ul>
                </div>
            </li>
        </ul>
    </main>
    <footer>
        <div class="container">
            copyright &copy; 2019 SACHIN
        </div>
    </footer>
</body>

</html>