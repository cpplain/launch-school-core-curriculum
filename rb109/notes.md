[Launch School Core Curriculum][readme] >
RB109 Assessment: Ruby and General Programming

# RB109 Assessment: Ruby and General Programming

Notes for [Launch School's][launch-school] RB109 course.

## Contents

- [Assessment Format](#assessment-format)
- [Study Sessions](#study-sessions)
- [Part 1: Study Guide for Test](#part-1-study-guide-for-test)

## Assessment Format

Assessment completed in two parts.

1. A timed test starting whenever ready.
2. A scheduled, live, one-on-one coding interview.

### Part 1 - Test

- A series of 20 to 25 questions with a maximum of 3 hours to complete.
- Test will be graded withing 24 hours of submission.
- May be asked to revise answers even if a high marks obtained.
- After submitting revision, grader will submit test to the instructor for final evaluation.
- Instructor will review initial answers and revisions and determine if work is sufficient to pass.
- Final evaluation will be made within 24 hours of receiving test from the grader.
- If test is passed, can continue on to part 2.
- If test is not passed, must retake the test per the retake policy.
- A study guide is provided outlining what to study and how to prepare.

### Part 2 - Interview

- Once passed part 1, instructions for scheduling the interview will be sent.
- The interview will be conducted similar to a real job interview.
- Topics will be limited to content covered in **RB101 Programming Foundations**.
- Must be able to explain with precision and clarity the core concepts from RB101 and be able to do so with code.
- Interview will be conducted over Zoom or Skype along with a collaborative online editor.
- Most likely will use [Coderpad][coderpad].
- Practice ahead of time using the [demo pad][demo-pad].
- When done, make sure to clear any changes made so it's ready for the next person.
- A study guide is provided outlining what to study and how to prepare.

## Study Sessions

- Highly encouraged to attend a study session.
- Formal study groups can be found on the **Events** and **Forum** pages.
- Formal study groups are a great way to get a better understanding of what will be expected on the assessments.

## Part 1: Study Guide for Test

The assessment for RB109 tests knowledge of courses RB100 and RB101.

### Specific Topics of Interest

Be able to clearly explain:

- Local variable scope, especially how local variables work with method invocation and method definition.
- How passing an object into a method definition can permanently mutate the object.
- Working with collections (**Array**, **Hash**, **String**).
- Working with collection methods (`each`, `map`, `select`, etc.).
- Variables as pointers.
- `puts` vs `return`
- `false` vs `nil`
- The idea of "truthiness."
- Method definition and method invocation.
- The implicit return value of method invocations and blocks.
- How the `Array#sort` method works.

### How to Answer the Assessment Questions

The questions in the assessment will typically be testing knowledge and understanding on more than one level.

- On one level, the question is testing the ability to parse code and describe it with precision or knowledge of a syntactical aspect or language-specific feature of Ruby.
- On another level, the question is testing understanding of a deeper, underlying principle, either a fundamental aspect of Ruby or programming in general.

When answering questions:

- Explain reasoning with reference to specific lines of code.
- Answer with precision, e.g, "method definition" or "method invocation" instead of "method".
- Highlight specific syntactical conventions or technical observations when relevant.
- Identify the key fundamental concepts being demonstrated in the question.

#### Example

> Examine the code example below. The last line outputs the String `'Hi'` rather than the String `'Hello'`. Explain what is happening here and identify the underlying principle that this demonstrates.

```ruby
greeting = "Hello"

loop do
  greeting = "Hi"
  break
end

puts greeting
```

> D) The local variable `greeting` is assigned to the String `'Hello'` on line 1. The `do..end` alongside the `loop` method invocation on lines 3 to 6 defines a block, within which `greeting` is reassigned to the String `Hi` on line 4. The `puts` method is called on line 8 with the variable `greeting` passed to it as an argument; since `greeting` is now assigned to `'Hi'`, this is what is output. This example demonstrates local variable scoping rules in Ruby; specifically the fact that a local variable initialized outside of a block is accessible inside the block.

> - Answer 'C', as well as precisely describing the example, identifies an important Ruby syntactical convention that is relevant to the example: the fact that the method invocation combined with do..end defines a block in Ruby. For some assessment questions this might be sufficient to receive full points, but many questions will expect you to demonstrate some deeper understanding of the fundamental concept that this illustrates.

> - Answer 'D' goes a step further than 'C' by explaining why this is important and the underlying principle that it demonstrates; i.e. the fact that method invocations with blocks in Ruby have particular scoping rules which affect whether or not the local variable can be referenced or reassigned. Based on the way that this particular question is phrased, answer 'D' would be the only answer of the four to receive full points in an actual assessment.

### Bullet Points

- Many students attempt to use bullet points to answer questions on the exams; this works for lists but not when trying to convey connected thoughts or logical progression.
- Do not leave it up to the grader to piece together the logic.
- Paragraphs make it easier to think about the big picture since the object is to strive for clarity.
- In general, a clearly written paragraph is easier to understand and grade than a list.

### Precision of Language

- It's important to be able to explain why something happens using precise vocabulary.
- Do not be vague.

#### Assignment

- "variable assigned to value", "value assigned to variable"
- Both are acceptable.
- Pick one and be consistent.

#### Truthiness

- Be very clear about the distinction between truthy/falsey and `true`/`false`.
- In Ruby, every value except `false` and `nil` evaluates to `true`.
- Use "**evaluates** to `true`/`false` or "is truthy/falsey" in a boolean context.
- Do not use "**is** `true`/`false`" or "**is equal** to `true`/`false`" unless discussing the boolean `true` or `false`.

#### Method Definition and Method Invocation

- Explain methods in terms of method definition and method invocation.

### Assessment Prep Videos

Beginning Ruby series serves as a great prep for the assessment.

- [Part 1][part1]
- [Part 2][part2]
- [Part 3][part3]

Pay particular attention to how the instructor uses vocabulary to explain concepts.

### Additional Tips

- Run code often; have a Ruby document or REPL ready to go beforehand.
- Read a few student blogs about their experience:
  - [Srđan][srdjan]
  - [Callie][callie]

<!-- internal links -->

[readme]: /README.md

<!-- external links -->

[callie]: https://medium.com/launch-school/passing-launch-schools-first-assessments-rb109-4b2b047060dc
[coderpad]: https://coderpad.io/
[demo-pad]: https://coderpad.io/9WY3K69C
[launch-school]: https://launchschool.com
[part1]: https://launchschool.com/blog/live-session-beginning-ruby
[part2]: https://launchschool.com/blog/live-session-beginning-ruby-part-2
[part3]: https://launchschool.com/blog/live-session-beginning-ruby-part-3
[srdjan]: https://medium.com/how-i-started-learning-coding-from-scratch/advices-for-109-written-assessment-part-1-6f7fa821cf84
