/**
 * 
 */
package com.detroitipsum;

/**
 * @author Jeseekia
 * 
 * This class includes methods for:
 * 	- building sentences
 *  - building paragraphs
 *  - returning a number of paragraphs.
 *
 */
public class IpsumGenerator {
	
	private static String[] detroitWords = {"Detroit","coney dog", "coney island", "People Mover", "Pistons",
								"Tigers", "Lions", "rebirth", "motor city","Greektown","Downtown",
									"Wayne State University", "Corktown","Midtown","New Center","Mexican Town",
										"Ford", "GM", "Chrysler", "like a rock", "the big three",
											"Quicken Loans", "Ilitch family"};
	
	public static String[] getWords(int numOfWords) {
		String[] words = new String[numOfWords];
		//For numOfWords
		for(int i=0; i<numOfWords; i++) {
			//get a random word
			int randomNum = (int) (Math.random()*detroitWords.length);
			words[i] = detroitWords[randomNum];
		}
		
		//Return the word(s)
		return words;
	}

	public static String buildSentence(String sentenceLength) {
		int sentenceLengthInt;

		if (sentenceLength.equals("short")){
			sentenceLengthInt = 7;
		} else if (sentenceLength.equals("medium")) {
			sentenceLengthInt = 9;
		} else if (sentenceLength.equals("long")) {
			sentenceLengthInt = 11;
		} else {
			sentenceLengthInt = 1;
		}

		String sentence = "";

		//Determine a sentence length between 7-11 words
		

			//Create a sentence string with a numOfWords
			String[] words = getWords(sentenceLengthInt);


			//Capitalize the first letter of the sentence
			Character.toUpperCase(words[0].charAt(0));

			//Add all words to the sentence variable
			for(String x: words) {
				sentence+=x;
				sentence+=" ";
			}

			//Add a period to the end of the sentence
			sentence = sentence.trim();
			sentence+=". ";


		
		//Return the sentence(s)
		return sentence;
	}
	
	public static String buildParagraph(String paragraphSize) {
		String paragraph = "";

		//Determine the paragraph size based on numOfParagraphs (small,medium,large)

		int paragraphSizeInt;

		if (paragraphSize.equals("small")){
			paragraphSizeInt = 5;
		} else if (paragraphSize.equals("medium")) {
			paragraphSizeInt = 7;
		} else if (paragraphSize.equals("large")) {
			paragraphSizeInt = 9;
		} else {
			paragraphSizeInt = 1;
		}
		//For a numOfParagraphs
		for(int i=0; i<paragraphSizeInt; i++) {
			//Build a paragraph with a certain number of sentences
			paragraph += buildSentence("short");
		}
		//Return the paragraph(s)
			
		return paragraph;
	}
	
	public String ipsumParagraph(int paragraphSize, int numOfParagraphs) {
		
		//For a numOfParagraphs
			//Build some ipsum
		
		//Return the ipsum
		
		return "";
	}
}
