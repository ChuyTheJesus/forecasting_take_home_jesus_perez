# forecasting_take_home
Let's see you build something that works on our machine!

## Background

We work in Docker, and we'd like to see what you can do using it.

Please read all of the following.

Pay close attention to the **Take Home Assignment Instructions, Submission Requirements, and Evaluation Criteria** section below.

## Technical Requirements

- [Docker](https://www.docker.com/products/docker-desktop)
  - This was written using version 19.03.5, build 633a0ea.

## Technical Nice to Haves

- [bash](https://www.gnu.org/software/bash/)
  - This was written using GNU bash, version 3.2.57(1)-release (x86_64-apple-darwin17).

## Take Home Assignment Instructions, Submission Requirements, and Evaluation Criteria

### Instructions

Use the data in [forecasting_take_home_data.xlsx](./notebooks/forecasting_take_home_data.xlsx) in the notebooks directory.

Install the [Facebook Prophet](https://facebook.github.io/prophet/docs/quick_start.html) Python package in the `forecasting_take_home` Docker container that is created in the "build" portion of [driver.sh](./driver.sh).

Note that the [requirements.txt](./requirements.txt) file includes **only** Jupyter and its dependencies.

Analyze the data, and tell us what you see.

Split the data into training and test sets.

Then, use the Facebook Prophet package to find the model that fits the training data the best (you choose what "the best" means), and evaluate the model's performance on the test set.

### Submission Requirements

- Create a new, publicly available GitHub repository named "forecasting_take_home_[YOUR NAME]".

  - For example, if your name is "Thomas Bayes", then the repo would be named "forecasting_take_home_thomas_bayes".

- All of your work should be in the GitHub repository you create.

- All analysis and modeling must be done in Docker and must be completely reproducible.

- Add a PDF called "forecasting_take_home_[YOUR NAME].pdf" to the repo, which documents the following:

 - Your analysis of the data, highlighting important discoveries you make.

 - Your modeling approach, including the decisions you faced, which ones you made, and why you made them.

 - Instructions on how to run the code for your analysis and modeling.

### Evaluation Criteria

So that you know where to invest your time, here's how we're going to evaluate you.

- Is all of your work in a publicly available GitHub repo?  (Pass/Fail)

- Does your repo include a "forecasting_take_home_[YOUR NAME].pdf"?  (Pass/Fail)

- What percentage of your analysis and modeling could we reproduce? (0-100%)

- How well did you document your analysis and modeling decisions? (0-100%)

## Automation

Take a look at [driver.sh](./driver.sh) to see the commands teed up for you.

We suggest that you use driver.sh or something like it in your work but don't require it.

0. Build the image.
```
bash driver.sh build
```

### Jupyter Notebook Usage

1. To see how to run a Jupyter notebook in the container run this.
```
bash driver.sh jupyter
```

After you do, you should see something like the following at the command line.
```
Starting the Jupyter server.
92332934de7329bddf3f07875974cef11e7ba0f99fe2b2169be4729a71ad8de7
Go to http://localhost:8888/.
```

2. Go to http://localhost:8888/notebooks/notebooks/hello_world.ipynb, and run the notebook.

You should see this in the output of cell 1.
```
[0, 1, 2, 3, 4]
```

3. Stop the container.
```
bash driver.sh stop
```

### Command Line Usage

1. Run the scripts/hello_world.py.
```
bash driver.sh hello-world
```

After you do, you should see something like this at the command line.
```
Running scripts/hello_world.py in the forecasting_take_home container.
[0, 1, 2, 3, 4]
```
