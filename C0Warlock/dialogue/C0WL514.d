BEGIN C0WL514

CHAIN IF WEIGHT #-1 ~OR(4)
IsGabber(Player1)
IsGabber("Imoen")
IsGabber("Imoen2")
IsGabber("Sarevok")~ THEN C0WL514 wishpc
~The sharply-dressed fiend stands before you with a conniving smile. "My master has dispatched me to negotiate the terms of your bargain, godchild. We may begin with your affirmation."~
END
    ++ ~I am ready.~ + wish.1
    + ~CombatCounterGT(0)~ + ~I don't have time to negotiate in the middle of combat!~ + wish.2
    ++ ~No, I have changed my mind. Return to whence you came.~ + wish.3

CHAIN IF ~True()~ THEN C0WL514 wish
~The sharply-dressed fiend stands before you with a conniving smile. "My master has dispatched me to negotiate the terms of your bargain, mortal. We may begin with your affirmation."~
END
    ++ ~I am ready.~ + wish.1
    + ~CombatCounterGT(0)~ + ~I don't have time to negotiate in the middle of combat!~ + wish.2
    ++ ~No, I have changed my mind. Return to whence you came.~ + wish.3

CHAIN C0WL514 wish.1
    ~The falxugon nods, raising his pen and parchment as you begin negotiating a complex contract. As expected, the fiend misses no opportunity to twist your words against you and make the terms as unfavorable to you as possible...~
END
IF ~CheckStatLT(LastTalkedToBy,10,WIS)~ DO ~SetupWish(4,4)~ + wish1
IF ~CheckStatGT(LastTalkedToBy,9,WIS)
    CheckStatLT(LastTalkedToBy,15,WIS)~ DO ~SetupWish(4,3)~ + wish2
IF ~CheckStatGT(LastTalkedToBy,14,WIS)
    CheckStatLT(LastTalkedToBy,18,WIS)~ DO ~SetupWish(4,2)~ + wish3
IF ~CheckStatGT(LastTalkedToBy,17,WIS)~ DO ~SetupWish(4,1)~ + wish4

CHAIN C0WL514 wish.2 
    ~The fiend chuckles. "We who handle bargains are accustomed to dealing even in such situations. You will find that time is of no inconvenience to us until our negotiations have concluded."~
END
    ++ ~Then let us begin.~ + wish.1
    ++ ~Never mind. Return to where you came from, fiend.~ + wish.3

CHAIN C0WL514 wish.3 
    ~The fiend smirks before giving a formal bow. "Likely the wisest course of action. I shall take my leave then, and relay your answer to my undoubtedly disappointed master."~
    DO ~ApplySpell(Myself,POOF_GONE)~ EXIT

CHAIN C0WL514 wish1
~Your lack of wisdom leaves you at a complete disadvantage. Throughout the writing of the contract, the fiend all but bullies you mentally into a position of watching him all but write the complex document on his own... there are few objections you can make. You pray you have not unknowingly signed away your soul as part of the deal.~
END
IF ~True()~ + wish5.2
IF ~OR(4)
IsGabber(Player1)
IsGabber("Imoen")
IsGabber("Imoen2")
IsGabber("Sarevok")~ + wish5.1

CHAIN C0WL514 wish2
~Throughout the process, the fiend continues to baffle you... and you are not even sure if you will receive anything remotely close to what you hope for by the end of the bargain. At best, you stall the worst of the clauses.~
END
IF ~True()~ + wish5.2
IF ~OR(4)
IsGabber(Player1)
IsGabber("Imoen")
IsGabber("Imoen2")
IsGabber("Sarevok")~ + wish5.1

CHAIN C0WL514 wish3
~You are wise enough to keep pace with the fiend, preventing it from taking total advantage of you and taking more than you expect. Still... the contract is hard to understand, and you wonder at the end result.~
END
IF ~True()~ + wish5.2
IF ~OR(4)
IsGabber(Player1)
IsGabber("Imoen")
IsGabber("Imoen2")
IsGabber("Sarevok")~ + wish5.1

CHAIN C0WL514 wish4
~Fortunately, you are quick to catch on. Before long, you begin tricking the fiend's phrasings yourself, taking some joy in hearing the grinding of teeth and barely-suppressed curses. You still doubt you'll get what you want, but chances are the fiend won't be able to trick you.~
END
IF ~True()~ + wish5.2
IF ~OR(4)
IsGabber(Player1)
IsGabber("Imoen")
IsGabber("Imoen2")
IsGabber("Sarevok")~ + wish5.1

CHAIN C0WL514 wish5.1
~The contract complete, the falxugon strokes its beard contemplatively, giving the contract one final examination before its crimson eyes glance at you. "Very well, godchild. Sign here with your blood, and the Pact Insidious will be complete."~
END
IF ~CheckStatLT(LastTalkedToBy,19,CHR)~ DO ~ApplySpellRES("C0WL514A",LasttalkedtoBy(Myself))~ + wish6
IF ~CheckStatGT(LastTalkedToBy,18,CHR)
    CheckStatLT(LastTalkedToBy,23,CHR)~ DO ~ApplySpellRES("C0WL514B",LasttalkedtoBy(Myself))~ + wish6
IF ~CheckStatGT(LastTalkedToBy,22,CHR)
    CheckStatLT(LastTalkedToBy,25,CHR)~ DO ~ApplySpellRES("C0WL514C",LasttalkedtoBy(Myself))~ + wish6
IF ~CheckStatGT(LastTalkedToBy,24,CHR)~ DO ~ApplySpellRES("C0WL514D",LasttalkedtoBy(Myself))~ + wish6

CHAIN C0WL514 wish5.2
~The contract complete, the falxugon strokes its beard contemplatively, giving the contract one final examination before its crimson eyes glance at you. "Very well, mortal. Sign here with your blood, and the Pact Insidious will be complete."~
END
IF ~CheckStatLT(LastTalkedToBy,19,CHR)~ DO ~ApplySpellRES("C0WL514A",LasttalkedtoBy(Myself))~ + wish6
IF ~CheckStatGT(LastTalkedToBy,18,CHR)
    CheckStatLT(LastTalkedToBy,23,CHR)~ DO ~ApplySpellRES("C0WL514B",LasttalkedtoBy(Myself))~ + wish6
IF ~CheckStatGT(LastTalkedToBy,22,CHR)
    CheckStatLT(LastTalkedToBy,25,CHR)~ DO ~ApplySpellRES("C0WL514C",LasttalkedtoBy(Myself))~ + wish6
IF ~CheckStatGT(LastTalkedToBy,24,CHR)~ DO ~ApplySpellRES("C0WL514D",LasttalkedtoBy(Myself))~ + wish6

CHAIN C0WL514 wish6
~After you sign, the fiend smiles coldly. "A pleasure doing business with you. You shall receive your expected boon upon my master being apprised of the contract's terms."
~
COPY_TRANS wish25 12