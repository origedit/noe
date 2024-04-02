name:=noe
source:=$(name).tal
rom:=$(name).rom

run: $(rom)
	uxnemu $(rom)

$(rom): $(source) format #validate lint
	drifblim $(source) $@

format: $(source)
	uxnfor $(source)

validate: $(source)
	uxnbal $(source)

lint: $(source)
	uxnlin $(source)

clean:
	rm .snarf

