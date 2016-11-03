BOXES=postgres

all: $(BOXES:=.box)

%.id: %/Vagrantfile
	cd $(basename $@) && vagrant destroy -f && vagrant up
	@echo "Waiting for shutdown"
	@sleep 5
	cp $(basename $@)/.vagrant/machines/default/virtualbox/id $@

%.box: %.id
	vagrant package --base $(shell cat $<) --output $@

clean:
	rm -f $(BOXES:=.box) $(BOXES:=.id)
	for box in $(BOXES); do \
		cd $$box && vagrant destroy -f; \
  done
