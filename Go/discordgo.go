package main

import (
	"flag"
	"fmt"

	"github.com/bwmarrin/discordgo"
)

var (
	Token string
	BotID string
)

func init() {

	flag.StringVar(&Token, "t", "", "Bot Token")
	flag.Parse()
}

func main() {

	dg, err := discordgo.New("Bot " + Token)

	dg.AddHandler(messageCreate)

	err = dg.Open()
	if err != nil {
		fmt.Println("error opening connection,", err)
		return
	}
}

func messageCreate(s *discordgo.Session, m *discordgo.MessageCreate) {

	if m.Content == "ping" {
		_, _ = s.ChannelMessageSend(m.ChannelID, "Pong!")
	}

}
