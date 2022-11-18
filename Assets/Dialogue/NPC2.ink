INCLUDE globals.ink

-> conversation_check

=== conversation_check ===
{NPC2_dialogue == 1: -> conversation1}
{NPC2_dialogue == 2: -> conversation2}
-> END

=== conversation1 ===
Hello! #speaker:NPC2 #portrait:NPC2 #layout:right
Nice to meet you.
I have a question for you.
-> question

=== question ===
Which one do you like? #speaker:NPC2 #portrait:NPC2 #layout:right
    + [bugs]
        -> chosen("bugs")
    + [homeworks]
        -> chosen("homeworks")

=== chosen(choice) ===
~ answer = choice
So you like {choice}.

~ NPC2_dialogue += 1
-> END

=== conversation2 ===
You already talked to me. #speaker:NPC2 #portrait:NPC2 #layout:right
Try talk to the another NPC.
-> END