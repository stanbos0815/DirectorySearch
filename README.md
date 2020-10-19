# DirectorySearch

Dieses kleine Batchskript durchsucht alle Ordner und Unterordner, ab dem Ordner, in dem dieses Skript ausgeführt wird.
Gesucht werden alle Files, deren Dateiname Zeichen oder Zeichenketten enthält, die in "input.txt" zeilenweise festgelegt sind.
Die Ergebnisse werden in "found.html" und "notfound.html" abgespeichert.
Zeilen können in input.txt mit vorangestelltem ";" auskommentiert werden. Nach diesen Zeilen wird dann nicht gesucht.

Alle Dateien aus dem search Ordner müssen in dem Ordner, ab dem gesucht werden soll, liegen. D.h. "input.txt", "found.html", "notfound.html" und "search.bat"

WARNUNG: Bei jedem ausführen des Skriptes werden found.html und notfound.html überschrieben!

Es empfiehlt sich found.html und notfound.html mit Chrome, Firefox oder Edge zu öffnen, da so bequem gefundene PDF- und Bilddateien geöffnet werden können.

# Schritt für Schritt Anleitung:

1. Dateien "search.bat", "input.txt", "found.hmtl" und "notfound.html" in das zu durchsuchendes Verzeichnis kopieren.

2. In der Textdatei "input.txt" müssen alle zu suchenden Dateien Zeilenweise eingefügt werden.
Beispiel:<br>
...<br>
beispiel.png<br>
test.txt<br>
irgendeineiDatei.jpg<br>
...<br>
oder<br>
...<br>
.pdf<br>
pdf<br>
suchtext<br>
...<br>
<br>
Zeilen, nach denen nicht gesucht werden soll, können mit führendem ";" auskommentiert werden:<br>
...<br>
;Dokumentenliste Teil 3:<br>
423.pdf<br>
xyz.pdf<br>
test.pdf<br>
...<br><br>

3. Datei "input.txt" speichern.<br>
4. Datei "search.bat" ausführen.

In der Kommandozeile kann nun verfolgt werden, wie die einzelnen Dateien gesucht werden.
Am Ende wird eine Statistik ausgegeben.
Doppelte Treffer (z.B. in zwei Unterordnern) werden auch doppelt gezählt.
Eine Zusammenfassung der gefunden und nicht gefundenen Dateien findet man auch in den vom Programm erstellten Dateien "found.html" und "notFound.html"

Viel Erfolg beim Suchen ;-)
