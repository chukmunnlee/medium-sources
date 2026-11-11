package com.example.demo.mcp;

import java.util.Date;

import org.springframework.ai.mcp.annotation.McpTool;
import org.springframework.stereotype.Component;

import com.example.demo.Version;

import jakarta.json.Json;
import jakarta.json.JsonArray;

@Component
public class VersionTool {

  @McpTool(
    name = "get-versions",
    description = """
      Get a list of all the application's version. 
      Returns a JSON object, application/json, with the list of versions and 
      the timestamp of when the result was generated.
    """
  )
  public String version() {
    JsonArray versions = Json.createArrayBuilder(Version.VERSIONS).build();
    return Json.createObjectBuilder()
    .add("versions", versions)
    .add("timestamp", (new Date()).toString())
    .build().toString();
  }
}
