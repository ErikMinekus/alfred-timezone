SOURCES := $(wildcard *.go)
BIN := alfred-timezone
FILES := $(BIN) info.plist icon.png $(shell find images -type f) sqlite.db
WORKFLOW := Timezone.alfredworkflow

all: $(BIN) $(WORKFLOW)

$(WORKFLOW): $(FILES)
	zip "$@" $^

$(BIN): $(SOURCES)
	go build -o $(BIN) $(SOURCES)

clean:
	rm $(BIN) $(WORKFLOW)
