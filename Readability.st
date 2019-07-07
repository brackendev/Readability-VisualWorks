<?xml version="1.0"?>

<st-source>
<time-stamp>From VisualWorks® Personal Use Edition, 8.3 of July 28, 2017 on July 7, 2019 at 8:42:56 AM</time-stamp>


<component-created>
<name>Readability</name> <type>package</type>
</component-created><!-- Package Readability* -->


<component-property>
<name>Readability</name> <type>package</type>
<property>packageName</property> <value>'Readability'</value>
</component-property>

<component-property>
<name>Readability</name> <type>package</type>
<property>comment</property> <value>'&lt;https://brackendev.github.io/Readability-VisualWorks/&gt;'</value>
</component-property>

<component-property>
<name>Readability</name> <type>package</type>
<property>notice</property> <value>'MIT License

Copyright (c) 2018-2019 brackendev

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.'</value>
</component-property>

<component-property>
<name>Readability</name> <type>package</type>
<property>prerequisiteDescriptions</property> <value>#(#(#name 'Base VisualWorks' #componentType #bundle) #(#name 'Grease-VisualWorks-Extensions' #componentType #package) #(#name 'Regex11' #componentType #package) #(#name 'SUnitToo' #componentType #package) #(#name 'SUnitToo(ls)' #componentType #package))</value>
</component-property>

<component-property>
<name>Readability</name> <type>package</type>
<property>developmentPrerequisites</property> <value>#(#(#any 'Base VisualWorks' '') #(#any 'Grease-VisualWorks-Extensions' '') #(#any 'Regex11' '') #(#any 'SUnitToo' '') #(#any 'SUnitToo(ls)' ''))</value>
</component-property>

<component-property>
<name>Readability</name> <type>package</type>
<property>prerequisiteParcels</property> <value>#(#('Base VisualWorks' '') #('Grease-VisualWorks-Extensions' '') #('Regex11' '') #('SUnitToo' '') #('SUnitToo(ls)' ''))</value>
</component-property>

<class>
<name>ReadabilityTest</name>
<environment>Smalltalk</environment>
<super>SUnit.TestCase</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>testString1 testString2 </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>Readability</package>
</attributes>
</class>

<comment>
<class-id>ReadabilityTest</class-id>
<body>ReadabilityTest is a test class for testing the behavior of Readability.

Instance Variables:
	testString1		&lt;ByteString&gt; 	Used for testing
	testString2		&lt;ByteString&gt;	Used for testing</body>
</comment>

<class>
<name>Readability</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>Readability</package>
</attributes>
</class>

<comment>
<class-id>Readability</class-id>
<body>I am Readability, an object to determine readability and comprehension difficulty for contemporary English text.

Sample invocations:

string := 'The Australian platypus is seemingly a hybrid of a mammal and reptilian creature.'.

Readability automatedReadabilityIndexForString: string.
Readability colemanLiauIndexForString: string.
Readability fleschReadingEaseForString: string.
Readability fleschKincaidGradeLevelForString: string.
Readability gunningFogIndexForString: string.
Readability smogGradeForString: string.
</body>
</comment>

<methods>
<class-id>ReadabilityTest</class-id> <category>tests</category>

<body package="Readability" selector="testIsWordPolysyllableExcludeCommonSuffixes">testIsWordPolysyllableExcludeCommonSuffixes
	| r |
	r := Readability new.
	self assert: (r isWordPolysyllable: 'crowdsourcing' excludeCommonSuffixes: false) equals: true.
	self assert: (r isWordPolysyllable: 'crowdsourcing' excludeCommonSuffixes: true) equals: false</body>

<body package="Readability" selector="testColemanLiauIndexForString">testColemanLiauIndexForString
	self assert: (Readability colemanLiauIndexForString: testString1) printString equals: '14.9'.
	self assert: (Readability colemanLiauIndexForString: testString2) printString equals: '9.1'</body>

<body package="Readability" selector="testFleschReadingEaseScoreForString">testFleschReadingEaseScoreForString
	self
		assert: (Readability fleschReadingEaseScoreForString: testString1)
		equals: 24.4.
	self
		assert: (Readability fleschReadingEaseScoreForString: testString2)
		equals: 64.8</body>

<body package="Readability" selector="testSentenceCountInString">testSentenceCountInString
	| r |
	r := Readability new.
	self assert: (r sentenceCountInString: testString1) equals: 1.
	self assert: (r sentenceCountInString: testString2) equals: 10</body>

<body package="Readability" selector="testSmogGradeForString">testSmogGradeForString
	self assert: (Readability smogGradeForString: testString1) equals: 11.6.
	self assert: (Readability smogGradeForString: testString2) equals: 8.3</body>

<body package="Readability" selector="testAutomatedReadabilityIndexSchoolLevelForScore">testAutomatedReadabilityIndexSchoolLevelForScore
	self
		assert: (Readability
				automatedReadabilityIndexGradeLevelForScore: 9.7)
		equals: '8'.
	self assert: (Readability
				automatedReadabilityIndexGradeLevelForScore: 12.1)
		equals: '11'.</body>

<body package="Readability" selector="testWordsInString">testWordsInString
	| r |
	r := Readability new.
	self assert: ((r wordsInString: testString1) size) equals: 13.
	self assert: ((r wordsInString: testString2) size) equals: 271</body>

<body package="Readability" selector="testAutomatedReadabilityIndexScoreForString">testAutomatedReadabilityIndexScoreForString
	self
		assert: (Readability automatedReadabilityIndexScoreForString: testString1)
		equals: 9.7.
	self
		assert: (Readability automatedReadabilityIndexScoreForString: testString2)
		equals: 12.1.</body>

<body package="Readability" selector="testFleschReadingEaseNotesForScore">testFleschReadingEaseNotesForScore
	self
		assert: (Readability fleschReadingEaseNotesForScore: 24.4)
		equals: 'Very difficult to read. Best understood by university graduates.'.
	self
		assert: (Readability fleschReadingEaseNotesForScore: 64.8)
		equals: 'Plain English. Easily understood by 13- to 15-year-old students.'</body>

<body package="Readability" selector="testSyllablesInWord">testSyllablesInWord
	| r |
	r := Readability new.
	self assert: (r syllablesInWord: 'The') equals: 1.
	self assert: (r syllablesInWord: 'Australian') equals: 4.
	self assert: (r syllablesInWord: 'platypus') equals: 3.
	self assert: (r syllablesInWord: 'is') equals: 1.
	self assert: (r syllablesInWord: 'seemingly') equals: 3.
	self assert: (r syllablesInWord: 'a') equals: 1.
	self assert: (r syllablesInWord: 'hybrid') equals: 2.
	self assert: (r syllablesInWord: 'of') equals: 1.
	self assert: (r syllablesInWord: 'a') equals: 1.
	self assert: (r syllablesInWord: 'mammal') equals: 2.
	self assert: (r syllablesInWord: 'and') equals: 1.
	self assert: (r syllablesInWord: 'reptilian') equals: 4.
	self assert: (r syllablesInWord: 'creature.') equals: 2</body>

<body package="Readability" selector="testFleschReadingEaseSchoolLevelForScore">testFleschReadingEaseSchoolLevelForScore
	self
		assert: (Readability fleschReadingEaseGradeLevelForScore: 24.4)
		equals: 'College Graduate'.
	self
		assert: (Readability fleschReadingEaseGradeLevelForScore: 64.8)
		equals: '8-9'</body>

<body package="Readability" selector="testWordHasSuffixWord">testWordHasSuffixWord
	| r |
	r := Readability new.
	self assert: (r wordHasSuffix: 'ED' word: 'worked') equals: true.
	self assert: (r wordHasSuffix: 'es' word: 'worked') equals: false</body>

<body package="Readability" selector="testPolysyllableWordsInStringExcludeCommonSuffixes">testPolysyllableWordsInStringExcludeCommonSuffixes
	| r |
	r := Readability new.
	self assert: (r polysyllableWordsInString: testString1 excludeCommonSuffixes: false) equals: 4.
	self assert: (r polysyllableWordsInString: testString1 excludeCommonSuffixes: true) equals: 4.
	self assert: (r polysyllableWordsInString: testString2 excludeCommonSuffixes: false) equals: 20.
	self assert: (r polysyllableWordsInString: testString2 excludeCommonSuffixes: true) equals: 12</body>

<body package="Readability" selector="testAlphanumericSentencesInString">testAlphanumericSentencesInString
	| r |
	r := Readability new.
	self
		assert: (r alphanumericSentencesInString: testString1)
		equals: 'The Australian platypus is seemingly a hybrid of a mammal and reptilian creature'.
	self
		assert: (r alphanumericSentencesInString: testString2)
		equals:
			'Four score and seven years ago our fathers brought forth on this continent a new nation conceived in liberty and dedicated to the proposition that all men are created equal Now we are engaged in a great civil war testing whether that nation or any nation so conceived and so dedicated can long endure We are met on a great battlefield of that war We have come to dedicate a portion of that field as a final resting place for those who here gave their lives that that nation might live It is altogether fitting and proper that we should do this But in a larger sense we can not dedicate we can not consecrate we can not hallow this ground The brave men living and dead who struggled here have consecrated it far above our poor power to add or detract The world will little note nor long remember what we say here but it can never forget what they did here It is for us the living rather to be dedicated here to the unfinished work which they who fought here have thus far so nobly advanced It is rather for us to be here dedicated to the great task remaining before us that from these honored dead we take increased devotion to that cause for which they gave the last full measure of devotion that we here highly resolve that these dead shall not have died in vain that this nation under God shall have a new birth of freedom and that government of the people by the people for the people shall not perish from the earth'</body>

<body package="Readability" selector="testIsWordCapitalized">testIsWordCapitalized
	| r |
	r := Readability new.
	self assert: (r isWordCapitalized: 'Capitalized') equals: true.
	self assert: (r isWordCapitalized: 'not capitalized') equals: false.
	self assert: (r isWordCapitalized: 'Y') equals: true.
	self assert: (r isWordCapitalized: 'n') equals: false</body>

<body package="Readability" selector="testComplexWordsInString">testComplexWordsInString
	| r |
	r := Readability new.
	self assert: (r complexWordsInString: testString1) equals: 3.
	self assert: (r complexWordsInString: testString2) equals: 12</body>

<body package="Readability" selector="testGunningFogIndexForString">testGunningFogIndexForString
	self assert: (Readability gunningFogIndexForString: testString1) printString equals: '14.4'.
	self assert: (Readability gunningFogIndexForString: testString2) printString equals: '12.6'</body>

<body package="Readability" selector="testAlphanumericCharactersInString">testAlphanumericCharactersInString
	| r |
	r := Readability new.
	self assert: (r alphanumericCharactersInString: testString1) equals: 68.
	self assert: (r alphanumericCharactersInString: testString2) equals: 1149</body>

<body package="Readability" selector="testSyllablesInString">testSyllablesInString
	| r |
	r := Readability new.
	self assert: (r syllablesInString: testString1) equals: 26.
	self assert: (r syllablesInString: testString2) equals: 367</body>

<body package="Readability" selector="testFleschKincaidGradeLevelForString">testFleschKincaidGradeLevelForString
	self assert: (Readability fleschKincaidGradeLevelForString: testString1) equals: 13.1.
	self assert: (Readability fleschKincaidGradeLevelForString: testString2) equals: 11.0</body>

<body package="Readability" selector="testAutomatedReadabilityIndexForString">testAutomatedReadabilityIndexForString
	self
		assert:
			((Readability automatedReadabilityIndexForString: testString1)
				at: 'Score')
		equals: 9.7.
	self
		assert:
			((Readability automatedReadabilityIndexForString: testString1)
				at: 'Ages')
		equals: '13-14'.
	self
		assert:
			((Readability automatedReadabilityIndexForString: testString1)
				at: 'U.S.A. School Level')
		equals: '8'.
	self
		assert:
			((Readability automatedReadabilityIndexForString: testString2)
				at: 'Score')
		equals: 12.1.
	self
		assert:
			((Readability automatedReadabilityIndexForString: testString2)
				at: 'Ages')
		equals: '16-17'.
	self
		assert:
			((Readability automatedReadabilityIndexForString: testString2)
				at: 'U.S.A. School Level')
		equals: '11'</body>

<body package="Readability" selector="testFleschReadingEaseForString">testFleschReadingEaseForString
	self
		assert: ((Readability fleschReadingEaseForString: testString1) at: 'Score')
		equals: 24.4.
	self
		assert:
			((Readability fleschReadingEaseForString: testString1)
				at: 'U.S.A. School Level')
		equals: 'College Graduate'.
	self
		assert: ((Readability fleschReadingEaseForString: testString1) at: 'Notes')
		equals: 'Very difficult to read. Best understood by university graduates.'.
	self
		assert: ((Readability fleschReadingEaseForString: testString2) at: 'Score')
		equals: 64.8.
	self
		assert:
			((Readability fleschReadingEaseForString: testString2)
				at: 'U.S.A. School Level')
		equals: '8-9'.
	self
		assert: ((Readability fleschReadingEaseForString: testString2) at: 'Notes')
		equals: 'Plain English. Easily understood by 13- to 15-year-old students.'</body>
</methods>

<methods>
<class-id>ReadabilityTest</class-id> <category>running</category>

<body package="Readability" selector="setUp">setUp
	testString1 := 'The Australian platypus is seemingly a hybrid of a mammal and reptilian creature.'.
	testString2 := 'Four score and seven years ago our fathers brought forth on this continent a new nation, conceived in liberty, and dedicated to the proposition that all men are created equal. Now we are engaged in a great civil war, testing whether that nation, or any nation so conceived and so dedicated, can long endure. We are met on a great battlefield of that war. We have come to dedicate a portion of that field, as a final resting place for those who here gave their lives that that nation might live. It is altogether fitting and proper that we should do this. But, in a larger sense, we can not dedicate, we can not consecrate, we can not hallow this ground. The brave men, living and dead, who struggled here, have consecrated it, far above our poor power to add or detract. The world will little note, nor long remember what we say here, but it can never forget what they did here. It is for us the living, rather, to be dedicated here to the unfinished work which they who fought here have thus far so nobly advanced. It is rather for us to be here dedicated to the great task remaining before us -- that from these honored dead we take increased devotion to that cause for which they gave the last full measure of devotion that we here highly resolve that these dead shall not have died in vain -- that this nation, under God, shall have a new birth of freedom -- and that government of the people, by the people, for the people, shall not perish from the earth.'</body>
</methods>


<methods>
<class-id>Readability class</class-id> <category>private</category>

<body package="Readability" selector="fleschReadingEaseNotesForScore:">fleschReadingEaseNotesForScore: aFloat
	aFloat &gt;= 90
		ifTrue: [ ^ 'Very easy to read. Easily understood by an average 11-year-old student.' ].
	aFloat &gt;= 80
		ifTrue: [ ^ 'Easy to read. Conversational English for consumers.' ].
	aFloat &gt;= 70
		ifTrue: [ ^ 'Fairly easy to read.' ].
	aFloat &gt;= 60
		ifTrue: [ ^ 'Plain English. Easily understood by 13- to 15-year-old students.' ].
	aFloat &gt;= 50
		ifTrue: [ ^ 'Fairly difficult to read.' ].
	aFloat &gt;= 30
		ifTrue: [ ^ 'Difficult to read.' ].
	^ 'Very difficult to read. Best understood by university graduates.'</body>

<body package="Readability" selector="automatedReadabilityIndexScoreForString:">automatedReadabilityIndexScoreForString: aString
	| reachability wordsFound sentencesFound alphanumCharsFound score |
	reachability := self new.
	wordsFound := (reachability wordsInString: aString) size.
	sentencesFound := reachability sentenceCountInString: aString.
	alphanumCharsFound := reachability alphanumericCharactersInString: aString.
	score := 4.71 * (alphanumCharsFound / wordsFound)
		+ (0.5 * (wordsFound / sentencesFound) - 21.43).
	^ score roundTo: 0.1</body>

<body package="Readability" selector="automatedReadabilityIndexGradeLevelForScore:">automatedReadabilityIndexGradeLevelForScore: aFloat
	aFloat &gt;= 14
		ifTrue: [ ^ 'College' ].
	aFloat &gt;= 13
		ifTrue: [ ^ '12' ].
	aFloat &gt;= 12
		ifTrue: [ ^ '11' ].
	aFloat &gt;= 11
		ifTrue: [ ^ '10' ].
	aFloat &gt;= 10
		ifTrue: [ ^ '9' ].
	aFloat &gt;= 9
		ifTrue: [ ^ '8' ].
	aFloat &gt;= 8
		ifTrue: [ ^ '7' ].
	aFloat &gt;= 7
		ifTrue: [ ^ '6' ].
	aFloat &gt;= 6
		ifTrue: [ ^ '5' ].
	aFloat &gt;= 5
		ifTrue: [ ^ '4' ].
	aFloat &gt;= 4
		ifTrue: [ ^ '3' ].
	aFloat &gt;= 3
		ifTrue: [ ^ '2' ].
	aFloat &gt;= 2
		ifTrue: [ ^ '1' ].
	^ 'Kindergarten'</body>

<body package="Readability" selector="automatedReadabilityIndexAgesForScore:">automatedReadabilityIndexAgesForScore: aFloat
	aFloat &gt;= 15
		ifTrue: [ ^ '23+' ].
	aFloat &gt;= 14
		ifTrue: [ ^ '18-22' ].
	aFloat &gt;= 13
		ifTrue: [ ^ '17-18' ].
	aFloat &gt;= 12
		ifTrue: [ ^ '16-17' ].
	aFloat &gt;= 11
		ifTrue: [ ^ '15-16' ].
	aFloat &gt;= 10
		ifTrue: [ ^ '14-15' ].
	aFloat &gt;= 9
		ifTrue: [ ^ '13-14' ].
	aFloat &gt;= 8
		ifTrue: [ ^ '12-13' ].
	aFloat &gt;= 7
		ifTrue: [ ^ '11-12' ].
	aFloat &gt;= 6
		ifTrue: [ ^ '10-11' ].
	aFloat &gt;= 5
		ifTrue: [ ^ '9-10' ].
	aFloat &gt;= 4
		ifTrue: [ ^ '8-9' ].
	aFloat &gt;= 3
		ifTrue: [ ^ '7-8' ].
	aFloat &gt;= 2
		ifTrue: [ ^ '6-7' ].
	^ '5-6'</body>

<body package="Readability" selector="fleschReadingEaseGradeLevelForScore:">fleschReadingEaseGradeLevelForScore: aFloat
	aFloat &gt;= 90
		ifTrue: [ ^ '5' ].
	aFloat &gt;= 80
		ifTrue: [ ^ '6' ].
	aFloat &gt;= 70
		ifTrue: [ ^ '7' ].
	aFloat &gt;= 60
		ifTrue: [ ^ '8-9' ].
	aFloat &gt;= 50
		ifTrue: [ ^ '10-12' ].
	aFloat &gt;= 30
		ifTrue: [ ^ 'College' ].
	^ 'College Graduate'</body>

<body package="Readability" selector="fleschReadingEaseScoreForString:">fleschReadingEaseScoreForString: aString
	"Flesch Reading Ease &lt;http://en.wikipedia.org/wiki/Flesch-Kincaid_readability_tests&gt;"

	| reachability totalWords totalSentences alphanumeric totalSyllables score |
	reachability := self new.
	totalWords := (reachability wordsInString: aString) size.
	totalSentences := reachability sentenceCountInString: aString.
	alphanumeric := reachability alphanumericSentencesInString: aString.
	totalSyllables := reachability syllablesInString: alphanumeric.
	score := 206.835 - (1.015 * (totalWords / totalSentences))
		- (84.6 * (totalSyllables / totalWords)).
	^ score roundTo: 0.1</body>
</methods>

<methods>
<class-id>Readability class</class-id> <category>public</category>

<body package="Readability" selector="automatedReadabilityIndexForString:">automatedReadabilityIndexForString: aString
	"Automated Readability Index &lt;http://en.wikipedia.org/wiki/Automated_Readability_Index&gt;"

	| score dict |
	score := self automatedReadabilityIndexScoreForString: aString.
	dict := Dictionary new.
	dict at: 'Score' put: score.
	dict at: 'Ages' put: (self automatedReadabilityIndexAgesForScore: score).
	dict at: 'U.S.A. School Level' put: (self automatedReadabilityIndexGradeLevelForScore: score).
	^ dict</body>

<body package="Readability" selector="fleschReadingEaseForString:">fleschReadingEaseForString: aString
	"Flesch Reading Ease &lt;http://en.wikipedia.org/wiki/Flesch-Kincaid_readability_tests&gt;"

	| score dict |
	score := Readability fleschReadingEaseScoreForString: aString.
	dict := Dictionary new.
	dict at: 'Score' put: score.
	dict at: 'U.S.A. School Level' put: (Readability fleschReadingEaseGradeLevelForScore: score).
	dict at: 'Notes' put: (Readability fleschReadingEaseNotesForScore: score).
	^ dict</body>

<body package="Readability" selector="examples">examples
	| string dict |
	string := 'The Australian platypus is seemingly a hybrid of a mammal and reptilian creature.'.
	dict := Dictionary new.
	dict at: 'Automated Readability Index' put: (self automatedReadabilityIndexForString: string).
	dict at: 'Coleman–Liau Index' put: (self colemanLiauIndexForString: string).
	dict at: 'Flesch-Kincaid Grade Level' put: (self fleschKincaidGradeLevelForString: string).
	dict at: 'Flesch Reading Ease' put: (self fleschReadingEaseForString: string).
	dict at: 'Gunning Fog Index' put: (self gunningFogIndexForString: string).
	dict at: 'SMOG Grade' put: (self smogGradeForString: string).
	dict inspect</body>

<body package="Readability" selector="smogGradeForString:">smogGradeForString: aString
	"SMOG Grade &lt;http://en.wikipedia.org/wiki/SMOG&gt;"

	| reachability totalSentences totalPolysyllables score |
	reachability := self new.
	totalSentences := reachability sentenceCountInString: aString.
	totalPolysyllables := reachability polysyllableWordsInString: aString excludeCommonSuffixes: false.
	score := 1.043 * (totalPolysyllables * (30 / totalSentences) + 3.1291) sqrt.
	^ score roundTo: 0.1</body>

<body package="Readability" selector="colemanLiauIndexForString:">colemanLiauIndexForString: aString
	"Coleman–Liau Index &lt;http://en.wikipedia.org/wiki/Coleman%E2%80%93Liau_index&gt;"

	| reachability wordsFound sentencesFound alphanumCharsFound score |
	reachability := self new.
	wordsFound := (reachability wordsInString: aString) size.
	sentencesFound := reachability sentenceCountInString: aString.
	alphanumCharsFound := reachability alphanumericCharactersInString: aString.
	score := 5.88 * (alphanumCharsFound / wordsFound)
		- (0.296 * (sentencesFound / wordsFound)) - 15.8 asFloat.
	^ score roundTo: 0.1</body>

<body package="Readability" selector="gunningFogIndexForString:">gunningFogIndexForString: aString
	"Gunning Fog Index &lt;http://en.wikipedia.org/wiki/Gunning_fog_index&gt;"

	| reachability totalWords totalSentences complexWords score |
	reachability := self new.
	totalWords := (reachability wordsInString: aString) size.
	totalSentences := reachability sentenceCountInString: aString.
	complexWords := reachability complexWordsInString: aString.
	score := 0.4 * (totalWords / totalSentences + (100.0 * (complexWords / totalWords))) asFloat.
	^ score roundTo: 0.1</body>

<body package="Readability" selector="fleschKincaidGradeLevelForString:">fleschKincaidGradeLevelForString: aString
	"Flesch-Kincaid Grade Level &lt;http://en.wikipedia.org/wiki/Flesch-Kincaid_readability_tests&gt;"

	| reachability totalWords totalSentences alphanumeric totalSyllables score |
	reachability := self new.
	totalWords := (reachability wordsInString: aString) size.
	totalSentences := reachability sentenceCountInString: aString.
	alphanumeric := reachability alphanumericSentencesInString: aString.
	totalSyllables := reachability syllablesInString: alphanumeric.
	score := 0.39 * (totalWords / totalSentences)
		+ (11.8 * (totalSyllables / totalWords) - 15.59).
	^ score roundTo: 0.1</body>
</methods>


<methods>
<class-id>Readability</class-id> <category>private</category>

<body package="Readability" selector="syllablesInWord:">syllablesInWord: aString
	"Based on objC-syllable-counter by Anthony Nichols &lt;https://github.com/nicholjs/objC-syllable-counter&gt;"

	| subsyl addsyl exceptionsOne exceptionsTwo lowercaseString replacedString wordSplit validWordParts syllables matchArray |
	subsyl := #('cial' 'tia' 'cius' 'cious' 'uiet' 'gious' 'geous' 'priest' 'giu' 'dge' 'ion' 'iou' 'sia$' '.che$' '.ched$' '.abe$' '.ace$' '.ade$' '.age$' '.aged$' '.ake$' '.ale$' '.aled$' '.ales$' '.ane$' '.ame$' '.ape$' '.are$' '.ase$' '.ashed$' '.asque$' '.ate$' '.ave$' '.azed$' '.awe$' '.aze$' '.aped$' '.athe$' '.athes$' '.ece$' '.ese$' '.esque$' '.esques$' '.eze$' '.gue$' '.ibe$' '.ice$' '.ide$' '.ife$' '.ike$' '.ile$' '.ime$' '.ine$' '.ipe$' '.iped$' '.ire$' '.ise$' '.ished$' '.ite$' '.ive$' '.ize$' '.obe$' '.ode$' '.oke$' '.ole$' '.ome$' '.one$' '.ope$' '.oque$' '.ore$' '.ose$' '.osque$' '.osques$' '.ote$' '.ove$' '.pped$' '.sse$' '.ssed$' '.ste$' '.ube$' '.uce$' '.ude$' '.uge$' '.uke$' '.ule$' '.ules$' '.uled$' '.ume$' '.une$' '.upe$' '.ure$' '.use$' '.ushed$' '.ute$' '.ved$' '.we$' '.wes$' '.wed$' '.yse$' '.yze$' '.rse$' '.red$' '.rce$' '.rde$' '.ily$' '.ne$' '.ely$' '.des$' '.gged$' '.kes$' '.ced$' '.ked$' '.med$' '.mes$' '.ned$' '.sed$' '.nce$' '.rles$' '.nes$' '.pes$' '.tes$' '.res$' '.ves$' 'ere$').
	addsyl := #('ia' 'riet' 'dien' 'ien' 'iet' 'iu' 'iest' 'io' 'ii' 'ily' '.oala$' '.iara$' '.ying$' '.earest' '.arer' '.aress' '.eate$' '.eation$' '[aeiouym]bl$' '[aeiou]{3}' '^mc' 'ism' '^mc' 'asm' '([^aeiouy])\1l$' '[^l]lien' '^coa[dglx].' '[^gq]ua[^auieo]' 'dnt$').
	exceptionsOne := #('abe' 'ace' 'ade' 'age' 'ale' 'are' 'use' 'ate' 'sense' 'resolve').
	exceptionsTwo := #('created').
	lowercaseString := aString asLowercase.
	replacedString := lowercaseString copyWithRegex: '[^a-z]' matchesReplacedWith: ''.
	wordSplit := replacedString allRegexMatches: '[aeiouy]+'.
	validWordParts := OrderedCollection new: wordSplit size.
	wordSplit
		do: [ :each | 
			each = ''
				ifFalse: [ validWordParts add: each ] ].
	syllables := 0.
	subsyl
		do: [ :each | 
			matchArray := OrderedCollection new: addsyl size.
			replacedString regex: each matchesCollect: [ :e | matchArray add: e ].
			syllables := syllables - matchArray size ].
	addsyl
		do: [ :each | 
			matchArray := OrderedCollection new: addsyl size.
			replacedString regex: each matchesCollect: [ :e | matchArray add: e ].
			syllables := syllables + matchArray size ].
	(exceptionsOne includes: lowercaseString)
		ifTrue: [ syllables := syllables - 1 ].
	(exceptionsTwo includes: lowercaseString)
		ifTrue: [ syllables := syllables + 1 ].
	syllables := syllables + validWordParts size.
	syllables = 0
		ifTrue: [ ^ 1 ]
		ifFalse: [ ^ syllables ]</body>

<body package="Readability" selector="complexWordsInString:">complexWordsInString: aString
	"Attemping the complex word suggestions at http://en.wikipedia.org/wiki/Gunning_fog_index"

	| count words polysyllable properNoun familiarJargon compound |
	count := 0.
	words := aString runsFailing: [:char | char isSeparator].
	words
		do: [ :each | 
			polysyllable := self isWordPolysyllable: each excludeCommonSuffixes: true.
			properNoun := self isWordCapitalized: each.
			familiarJargon := false.	"TODO"
			compound := false.	"TODO"
			polysyllable &amp; properNoun not &amp; familiarJargon not &amp; compound not
				ifTrue: [ count := count + 1 ] ].
	^ count</body>

<body package="Readability" selector="syllablesInString:">syllablesInString: aString
	| syllables words |
	syllables := 0.
	words := self wordsInString: aString.
	words do: [ :each | syllables := syllables + (self syllablesInWord: each) ].
	^ syllables</body>

<body package="Readability" selector="isWordCapitalized:">isWordCapitalized: aString
	| letter |
	letter :=aString size &gt; 1
		ifTrue: [ aString copyFrom: 1 to: 1 ]
		ifFalse: [ aString ].
	^ letter matchesRegex: '([A-Z])'</body>

<body package="Readability" selector="isWordPolysyllable:excludeCommonSuffixes:">isWordPolysyllable: aString excludeCommonSuffixes: aBoolean
	| syllables |
	aString size &lt; 3
		ifTrue: [ ^ false ].
	syllables := self syllablesInWord: aString asLowercase.
	syllables &gt; 2
		ifTrue: [ aBoolean
				ifTrue: [ (self wordHasSuffix: 'ed' word: aString asLowercase) not &amp; (self wordHasSuffix: 'es' word: aString asLowercase) not
						&amp; (self wordHasSuffix: 'ing' word: aString asLowercase) not
						ifTrue: [ ^ true ] ]
				ifFalse: [ ^ true ] ].
	^ false</body>

<body package="Readability" selector="alphanumericSentencesInString:">alphanumericSentencesInString: aString
	| stripped flattened |
	stripped := aString allRegexMatches: '[a-zA-Z0-9 ]'.
	flattened := stripped inject: '' into: [ :text :each | text, each asString, '' ].
	^ (flattened trimBlanks trimSeparators) copyReplaceAll: '  ' with: ' '.</body>

<body package="Readability" selector="alphanumericCharactersInString:">alphanumericCharactersInString: aString
	| count |
	count := 0.
	aString asArray
		do: [ :char | 
			char isAlphaNumeric
				ifTrue: [ count := count + 1 ] ].
	^ count</body>

<body package="Readability" selector="polysyllableWordsInString:excludeCommonSuffixes:">polysyllableWordsInString: aString excludeCommonSuffixes: aBoolean
	| polysyllables words |
	polysyllables := 0.
	words := aString runsFailing: [:char | char isSeparator].
	words
		do: [ :each | 
			(self isWordPolysyllable: each excludeCommonSuffixes: aBoolean)
				ifTrue: [ polysyllables := polysyllables + 1 ] ].
	^ polysyllables</body>

<body package="Readability" selector="sentenceCountInString:">sentenceCountInString: aString
	| count periodValue lastChar |
	periodValue := Character codePoint: 46.
	count := aString occurrencesOf: periodValue.
	lastChar := aString string at: aString size.
	lastChar value = periodValue
		ifTrue: [ ^ count ]
		ifFalse: [ ^ count + 1 ]</body>

<body package="Readability" selector="wordHasSuffix:word:">wordHasSuffix: aStringSuffix word: aString
	| i |
	i := aString findString: aStringSuffix startingAt: aString size - aStringSuffix size ignoreCase: true useWildcards: false.
	^ (i last == 0) not</body>

<body package="Readability" selector="wordsInString:">wordsInString: aString
	| cleaned |
	cleaned := self alphanumericSentencesInString: aString.
	^ cleaned findTokens: ' '</body>
</methods>



</st-source>
