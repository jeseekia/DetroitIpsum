package com.detroitipsum;

import static org.hamcrest.CoreMatchers.*;

import static org.junit.Assert.*;

import java.util.Arrays;

import org.hamcrest.core.CombinableMatcher;

import org.hamcrest.core.Is;
import org.hamcrest.core.IsInstanceOf;
import org.junit.Test;


/**
 * Created by Jeseekia on 3/23/16.
 */
public class IpsumGeneratorTest {

    @Test
    public void gettingWordsReturnsANumberOfWords() throws Exception {
        String[] words;
        words = IpsumGenerator.getWords(4);

        assertThat(Arrays.asList(words), everyItem(isA(String.class)));
    }

    @Test
    public void testBuildSentence() throws Exception {

    }

    @Test
    public void testBuildParagraph() throws Exception {

    }

    @Test
    public void testIpsumParagraph() throws Exception {

    }
}