# amazon_database_analysis
This analysis consists of 3 notebooks **in the master branch **(all other files are datasets as well as some files created in process). 

**Notebook 1 - statistics.ipynb**
This notebooks contains some general statistic on the dataset withouth the use of ML. Some results: 
Reviews number: 78383
Number of products: 7149 
The most reviewed products are Plantronics Voyager 510 Bluetooth Headset, Motorola HS850 Bluetooth Headset, Samsung WEP200 Bluetooth Wireless Phones Headset, Motorola H700 Bluetooth Headset, and Jawbone Noise Shield Bluetooth Headset. Interestingly, the top-reviewed product (Plantronics Voyager 510 Bluetooth Headset) has 4 times more reviews than the runner-up Motorola HS850 Bluetooth Headset.

Reviews with score 4.0 and 5.0 are reviews with the largest number. 

This notebook also contains a function allowing to show some statistics on any product: average score, number of reviews corresponding to each score.

**Notebook 2 - classification.ipynb**
A common problems with reviews (especially on Amazon) is a lot of computer generated reviews and spam. I've created a binary text classification model allowing to predict whether a review is real or fake and then applying it to our dataset. 

I have trained this model based on this dataset https://osf.io/tyue9/

I then have counted that 11% of reviews are predicted by the model as fake ones. Meaning both people reading reviews on a certain products as well as websites selling products of other companies should pay attention to the fact that about 11% of reviews left on such websites are misleading because they are computer generated.

**Notebook 3 - topic_modelling.ipynb**
This notebook analyses what is common for negative reviews and what is common for positive ones - allowing to find the reasons for such scores. 

Possible reasons for good comments:
1) simplicity and accessibility
2) battery life
3) pictures and ringtones
4) cool staff that can be downloaded
5) good camera
6) fast delivery
7) general look
8) good case quality
9) managable

and for bad ones:
1) too heavy
2) bad battery 
3) issues with software and complicated interface
4) accessories that are difficult to remove?

The clusters are a bit vague. Probably bacause of the amount of data trained on (a have set a limi of 10000 reviews). And because of the absence of lemmatization. There is a lot of further work needed. 
