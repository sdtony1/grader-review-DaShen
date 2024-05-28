CPATH='.:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar'

rm -rf student-submission
rm -rf grading-area

mkdir grading-area

git clone $1 student-submission
echo 'Finished cloning'


# Draw a picture/take notes on the directory structure that's set up after
# getting to this point
# Step 2
if [[ -f student-submission/ListExamples.java ]]
then 
    echo "ListExamples.java file found."
else 
    echo "ListExamples.java file not found."
    echo "Grade: 0"
    exit
fi

# Step 3
cp TestListExamples.java student-submission/ListExamples.java grading-area
cp -r lib grading-area

# Step 4
cd grading-area
javac -cp $CPATH *.java

echo "The exit code for the compile step is $?." 
# Then, add here code to compile and run, and do any post-processing of the
# tests
