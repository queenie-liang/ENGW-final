INCLUDE globals.ink

-> conversation_check

=== conversation_check ===
{NPC1_dialogue == 2 && NPC2_dialogue == 2: -> conversation3}
{NPC1_dialogue == 1: -> conversation1}
{NPC1_dialogue == 2: -> conversation2}
-> END

=== conversation1 ===
Hello. #speaker:NPC1 #portrait:NPC1 #layout:left
How are you doing?
NPC over there has a question for you.
~ NPC1_dialogue += 1
-> END

=== conversation2 ===
Talk to another NPC. #speaker:NPC1 #portrait:NPC1 #layout:left
Would you?
-> END

=== conversation3 ===
I heard that you like {answer}. #speaker:NPC1 #portrait:NPC1 #layout:left
Really?
-> END