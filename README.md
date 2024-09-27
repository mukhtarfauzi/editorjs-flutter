# EditorJS viewer for Flutter

A viewer compatible with the EditorJS schema.

Editor.js is a block-styled editor that allows users to create content using various types of blocks. Each block serves a different purpose and can be customized. Here are the main types of blocks typically available in Editor.js:

1. **Paragraph**: A standard text block for writing paragraphs of text.
2. **Header**: Used for creating headings (H1, H2, H3, etc.) to organize content hierarchically.
3. **List**: Supports ordered (numbered) and unordered (bulleted) lists.
4. **Image**: Allows users to insert images into the content.
5. **Video**: Used for embedding videos from various platforms.
6. **Quote**: For adding block quotes or citations.
7. **Delimiter**: A horizontal line to separate content visually.
8. **Raw HTML**: For inserting custom HTML code directly into the content.
9. **Table**: To create and manage tables within the content.
10. **Link Tool**: For adding hyperlinks to text.
11. **Code**: For displaying code snippets with syntax highlighting.
12. **Marker**: To highlight text.
13. **Checklist**: For creating interactive checklists.
14. **Embed**: For embedding content from other platforms (like tweets or Facebook posts).
15. **Audio**: To insert audio files.

These blocks can be extended or customized with additional plugins to suit specific needs. The flexibility of Editor.js allows developers to create custom blocks as well.

# DISCLAIMER
This library is still under development, so critical bugs are expected and should not be used right now for a production environment.

Also, right now this plugin is compatible with Flutter 1 and 2. We are working in Flutter v3 compatibility and will come soon.

# Installation

Add these lines in your pubspec.yaml file on the dependencies level:

```dart
  editorjs_flutter: any
```

After that just execute ```flutter pub get``` in Terminal as always.

# Usage

## Viewer
For Viewer, you must ensure you have as input an EditorJS JSON as shown in EditorJS documentation at https://editorjs.io/. 

Also, you need to create a JSON file with the following schema for CSS styles:
```json
{
  "cssTags": [
    {
      "tag" : "code",
      "backgroundColor" : "#33ff0000",
      "color" : "#ffff0000",
      "padding" : 5.0
    },
    {
      "tag" : "mark",
      "backgroundColor" : "#ffffff00",
      "padding" : 5.0
    }
  ],
  "defaultFont" : "Roboto"
}
```

After that, you may use the viewer as follows:

```dart
    EditorJSView editorJSView; // Set your EditorJSView instance.

    // Substitute as the way of getting your JSON
    String data = await DefaultAssetBundle.of(context).loadString("example_asset/example.json");
    String styles = await DefaultAssetBundle.of(context).loadString("example_asset/editorjsstyles.json");

    setState(() { // Recommended for async environments.
      editorJSView = EditorJSView(editorJSData: data);
    });
```

Finally, assign it to your widget as you wish. The Viewer has the same features as a common column.

```dart
@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your app title"),
      ),
      body: SingleChildScrollView(
          child: Column(children: [
            (editorJSView != null) ? editorJSView : Text("Please wait...")
          ],)
      ),
    );
  }
```

## Editor
Editor is available right now as an alpha preview and is still under development.
You may use it as follows:
```dart
  EditorJSEditor editorJSEditor; 

  @override
  void initState() {
    super.initState();
    setState(() {
      editorJSEditor = EditorJSEditor();
    });
  }
```

Finally, assign it to your widget as you wish. The Editor has the same features as a common column.

```dart
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create Note"),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          (editorJSEditor != null) ? editorJSEditor : Text("Please wait")
        ],)
      )
    );
  }
```
# Collaborators
I want to say thank you to all collaborators on this development. Kudos for you :D

@Dhi13man - Flutter 2 compatibility and Null Safety.

@mnomanmemon - H1 to H6 behavior for the framework and Flutter v3 compatibility.

# Want to Collaborate?
Please send me a message to Twitter (@RZEROSTERN) or an email to marco.ramirez@rzerocorp.com for getting in touch.

Also if you have an issue or want to propose a fix, please leave it in the Issues tab on Github. I'll fix it ASAP.

**Made in Mexico with love by RZEROSTERN**
