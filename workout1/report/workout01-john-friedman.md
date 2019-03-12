workout01
================
John Friedman
March 4, 2019

Who is the best Golden State Warrior's Player?
==============================================

You may have heard of Stephen Curry. He is well-known for his amazing shots even among those who don't watch basketball. But is he the best Golden State Warrior's player? What makes a player the best?

Let's do some Analysis
----------------------

Kevin Durant may not be the most well-known Golden State Warrior player, but he is perhaps the most accurate overall, making 54.1% of his shots. For comparison, Stephen Curry makes only 46.7% of his shots. However, this is a flawed comparison. Curry made 1250 shots this season compared to Durant's 915. If we look at the total shots made, Curry is ahead 594-495. It could be possible that Curry simply takes better shots.

### All Points

| name           |  total|  made|  perc\_made|
|:---------------|------:|-----:|-----------:|
| Andre Iguodala |    371|   192|   0.5175202|
| Draymond Green |    578|   245|   0.4238754|
| Kevin Durant   |    915|   495|   0.5409836|
| Klay Thompson  |   1220|   575|   0.4713115|
| Stephen Curry  |   1250|   584|   0.4672000|

When it comes to two pointers, Kevin Durant is top of the class beating Curry 390-304. However, his accuracy drops below that of Andre Iguodala. Iguodala's lowly 134 shots with 63.8% accuracy reinforces the idea that accuracy is a flawed metric for estimating Golden State Warrior's skill. It seems that the highest accuracy implies that you score lower.

What metric should we then use to estimate skill? Total shots made may be a better proxy for skill. However, it too suffers from a problem. Scoring more shots might mean making more bad shots and giving away the ball. Total shots made might just be indicative of playing aggresively, which is not necessarily a good thing. Seen from this light, accuracy can be a sign that a player is too cautious. A cautious player may make every shot, but might not make many.

This is somewhat corrobated by the data, as the top two scorers Klay Thompson and Stephen Curry have a lower accuracy than all but Draymond Green.

### 2 Pointers

| name           |  total|  made|  perc\_made|
|:---------------|------:|-----:|-----------:|
| Andre Iguodala |    210|   134|   0.6380952|
| Draymond Green |    346|   171|   0.4942197|
| Kevin Durant   |    643|   390|   0.6065319|
| Klay Thompson  |    640|   329|   0.5140625|
| Stephen Curry  |    563|   304|   0.5399645|

Probably the best choice is to combine accuracy alongside total shots made. This give us a good combination of player, not too aggressive nor too cautious.

### 3 Pointer

| name           |  total|  made|  perc\_made|
|:---------------|------:|-----:|-----------:|
| Andre Iguodala |    161|    58|   0.3602484|
| Draymond Green |    232|    74|   0.3189655|
| Kevin Durant   |    272|   105|   0.3860294|
| Klay Thompson  |    580|   246|   0.4241379|
| Stephen Curry  |    687|   280|   0.4075691|

If we consider accuracy alongside total shots made, Kevin Durant is clearly the best Golden State Warrior player. He is levelheaded by our metric, making 60.7% of 2 pointers (BEST Accuracy), 38.6% of 3 pointers (Middle), and 54.1% overall, while shooting nearly as many shots as Iguodala and Green combined.

A quick look at shot location
-----------------------------

<img src="../images/gsw-shot-charts.png" width="2400" />

As we can see Curry and Thompson have a very similar distribution of shot locations. Durant has a strong bias towards 2 pointers, Iguodala prefers shooting from the side, and Green prefers the front.

Other considerations
--------------------

So far our metric marks Durant as the best Golden State Warrior player. But lets step back and take another look using shot location. As we mentioned before Iguodala and Green have strong preferences to where they take their shots. But what about Curry, Thompson, and Durant?

It turns out that all three have biases when it comes to shooting. If we were choosing a player based on incredible shots, Iguodala, Green & Curry come out on top. They have all made amazingly far shots from about the same distance. Curry has made the most. But long distance skill has its flaws too. A trick shooter might miss a lot of the more important closer up shots.

As we continue to analyze shot location, we notice that Curry has a slight leftern bias. He is very good at breaking away on that side to make close shots. Thompson the runnerup in most made shots, seems to have a right bias along the entire right side. Green makes almost none of his shots within the 2pt region until he gets very close. Iguodala makes almost all of his very close shots. Durant seems to have no clear bias.

Again Durant scores a win in our metric as it seems likely that a better player would have no clear biases towards location, but rather would be able to score from any region if given the chance. It's unlikely that Curry/Thompson's bias is merely a result of exploiting weaknesses in other's positions as their biases are opposite to each other. Durant again comes out level-headed.

Full Metric:
------------

1.  total shots:

-   Curry (most shots)
-   Durant (highest accuracy)

1.  two pointers

-   Durant (most shots)
-   Iguodala (highest accuracy)

1.  three pointers

-   Curry (most shots)
-   Thompson (highest accuracy)

1.  Non-symmetric location bias

-   Durant (least bias)
-   Curry (second least bias)

Curry & Durant tie for first by being in three metrics. Only Iguodala & Thompson squeeze in a win on even one metric.

Tiebreaker: It's Stephen Curry.
-------------------------------

Yep. It's Curry. No matter how hard we try to argue against that. He is the best. Green & Iguodala have made shots as far back as Curry has. They've made one each. He's made **six**. Not only that but he's **made the most shots overall**, is accurate at **long distances**, and his location bias is pretty **miniscule**. As much as we might argue that Durant is level-headed and a good player, Curry beats him in sheer number of shots made. **Curry, you win.**

### References:

\*Modeled off of this article somewhat ("<https://www.nba.com/article/2017/12/14/one-team-one-stat-warriors-shooting-better-ever>")

\*All data from ("<https://github.com/ucb-stat133/stat133-spring-2019>")

### Disclaimer

*John Friedman is a student at UCB. He has never watched basketball, nor has any idea what the rules are, aside from a quick look at wikipedia and high school gym.*

*The views on this page do not necessarily reflect the views of the UC Berkeley, Stat 133, or Gaston Sanchez.*
