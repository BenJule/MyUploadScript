#!/bin/bash
alias curl='noglob curl'
shopt -u nullglob
#unsetopt nomatch

MEDIA_DIR='/home/benlue/Scripts/MeinUploadScript/Media/Urlaub/'

# Frankreich Clips
FR_EMOJI=🇫🇷
FR_DIR='Frankreich'
TWITTER_FR_HTAGS='#france #francetourism #frankreich #europe #visitfrance #greatshots #travel #francetravel #paris'
TUMBLR_FR_HTAGS='\"france\", \"francetourism\", \"frankreich\", \"europe\", \"visitfrance\", \"greatshots\", \"travel\", \"francetravel\", \"paris\"'

# Deutschland Clips
DE_EMOJI=🇩🇪
DE_DIR='Deutschland'
TWITTER_DE_HTAGS='#germany #germanytourism #deutschland #europe #visitgermany #greatshots #travel #germanytravel #berlin'
TUMBLR_DE_HTAGS='\"germany\", \"germanytourism\", \"deutschland\", \"europe\", \"visitgermany\", \"greatshots\", \"travel\", \"germanytravel\", \"berlin\"'

# Schweiz Clips
CH_EMOJI=🇨🇭
CH_DIR='Schweiz'
TWITTER_CH_HTAGS='#swiss #swisstourism #schweiz #europe #visitswiss #greatshots #travel #germanyswiss #basel'
TUMBLR_CH_HTAGS='\"swiss\", \"swisstourism\", \"schweiz\", \"europe\", \"visitswiss\", \"greatshots\", \"travel\", \"swisstravel\", \"basel\"'