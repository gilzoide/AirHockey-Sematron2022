ASSETS = $(shell find . -not -path Build \( -name '*.png' -o -name '*.wav' -o -name '*.svg' -o -name '*.ttf' \) )
ASSETS_ZIP = AirHockey-Sematron2022.zip

zip_assets: $(ASSETS)
	zip $(ASSETS_ZIP) $(ASSETS)


clean:
	$(RM) $(ASSETS_ZIP)
