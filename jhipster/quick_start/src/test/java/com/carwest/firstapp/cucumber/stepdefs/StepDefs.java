package com.carwest.firstapp.cucumber.stepdefs;

import com.carwest.firstapp.QuickStartApp;

import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.ResultActions;

import org.springframework.boot.test.context.SpringBootTest;

@WebAppConfiguration
@SpringBootTest
@ContextConfiguration(classes = QuickStartApp.class)
public abstract class StepDefs {

    protected ResultActions actions;

}
