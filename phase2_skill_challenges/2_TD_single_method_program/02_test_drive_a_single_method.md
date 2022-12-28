# Test Drive a Single-Method Program

_**This is a Makers Vine.** Vines are designed to gradually build up sophisticated skills. They contain a mixture of text and video, and may contain some challenge exercises without proposed solutions. [Read more about how to use Makers
Vines.](https://github.com/makersacademy/course/blob/main/labels/vines.md)_

Learn to test-drive a single-method program.

## On Test-Driven Development

So far you have written tests for existing code. This is useful because it helps
us catch regressions — times when new changes break old features.

However, this is only a small fraction of what we can do with tests. We can
actually use tests to structure our approach to programming. In doing this, we
learn a way of programming that works within the limitations of our brains.

Let's first look at what 'normal' non-test-driven programming looks like:

> **Freerunning Development**
> 
> In this approach, you read the problem and think about it for a bit. Then you
> start writing code. You keep going and possibly running the code, seeing if
> you're getting closer to the solution and fixing your mistakes. Eventually
> your program does what you want.
> 
> This can be very thrilling and motivating when it is going well!
> 
> However, there is a problem: code gets complex. At some point it gets so
> complex that it won't fit in our brains any more. Then we start to feel
> overloaded and anxious. It can be very frustrating.

Freerunning Development is fine for small problems that stay small. However,
when problems get bigger we start to see the limits of this approach.

Test-driven development is another approach. Let's look at that:

> **Test-driven Development**  
> 
> In this approach, you read the problem and think about it for a bit.
> 
> Then you write a small example of how your code might be used in the form of a
> 'test' or 'specification' ('spec'). You run the test and see that it fails
> with an error. This is called the 'red' phase.
> 
> Then you write just enough of your program so that it can behave like the
> example (test) you wrote. Then you run the test again. If it still fails you
> fix it. Eventually you get it to pass. This is called the 'green' phase.
> 
> After this, you improve the readability, structure, and other qualities of the
> code you wrote without changing its behaviour. This is called the 'refactor'
> stage.
> 
> Then you write another small example, and continue in a cycle until your
> program is complete and you have a full set of examples to prove it.
> 
> This approach is much more structured and, at times, it can even feel boring.
> However because it forces us to break down large problems into clearly
> specified and small examples that you focus on one by one, it helps our brains
> manage the complexity of a codebase by taking things 'one at a time'.

The above is a simplified approach. Over time you will add more techniques to
it.

Test-driven development is an approach to building software in the same way that
Karate is an approach to combat. It structures everything you do. At first it
will feel  strange and you will want to resume your unstructured approach.
However, it allows you to tackle much greater problems. 

In the same way the discipline of a martial artist enables them to use their
strength much more effectively, your discipline — both in test-driving and the
other three practices — enables you to use your brain much more effectively.

## Demonstration

[A video demonstration](https://www.youtube.com/watch?v=3VwGSAOZ5sc&t=0s)

## Exercise

In this project you will build personal diary system. You'll start by writing a
couple of methods that will be useful later on.

Test-drive a method with the following design:

> **Design**
> 
> A method called `make_snippet` that takes a string as an argument and returns
> the first five words and then a '...' if there are more than that.

You may immediately think "I know how to code that!". Resist that temptation and
stick to the test-driving process.

1. Write a small example as a test.
2. Run the test (RED).
3. Write enough code to make that test pass.
4. Run the test (GREEN).
5. Refactor if necessary.
6. Return to step 1 and keep going until your program is complete.

[Example solution](https://www.youtube.com/watch?v=3VwGSAOZ5sc&t=1875s)

## Challenge

Test-drive a method with the following design:

> **Design**
> 
> A method called `count_words` that takes a string as an argument and returns
> the number of words in that string.


[Next Challenge](03_design_a_single_method.md)

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=challenges%2F02_test_drive_a_single_method.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=challenges%2F02_test_drive_a_single_method.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=challenges%2F02_test_drive_a_single_method.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=challenges%2F02_test_drive_a_single_method.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=challenges%2F02_test_drive_a_single_method.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
