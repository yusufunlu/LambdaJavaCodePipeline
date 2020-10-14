package com;

import static org.junit.Assert.assertEquals;

import com.yusufu.App;
import org.junit.Test;

public class AppTest {
  @Test
  public void successfulResponse() {
    App app = new App();
    String result = app.handleRequest(null, null);
    assertEquals(result, "hello world 1");
  }
}
