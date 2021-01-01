<script>
	let domainForSale = "felix.surf";
	let email = "info@tgifelix.com";
	let emoji = ['🤙','🤟','🥳','👨‍🚀','🙀','🥰','😍','👽','🤖'];
	let randomEmoji = emoji[Math.floor(Math.random()*emoji.length)];
	let awesome = ['AWESOMEEEEE!','YIPEE KI YAY!','WoOoOoOoT!','YEEEHAAAWW!','AWWW YEAH!', 'OMGOMGOMG!1!!'];
	let randomAwesome = awesome[Math.floor(Math.random()*awesome.length)];
</script>

<svelte:head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
	<meta name="description" content="This domain is for sale!">
	<meta name="keywords" content="domain, sale, {domainForSale}">
	<meta name="author" content="Felix Swinkels">
	<title>{domainForSale} is for sale!</title>
</svelte:head>

<main>
	<h2>{randomEmoji}</h2>
    <h1><strong>{randomAwesome}</strong></h1>
    <p>The domain <strong>{domainForSale}</strong> is for sale! 🎉</p>
<p><a href="mailto:{email}?subject={domainForSale}">Get in touch quickly!</a></p>
</main>

<style>
	:root {
		--gradient: 120deg, #ff5f6d 0%, #ffc371 100%;
	}
	:global(body) {
		background-color:#fff;
		position: relative;
		overflow: hidden;
	}
	main {
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        text-align: center;
        min-height: 99vh;
    }
	a {
		text-decoration: none;
		color: #333;
		background-image: linear-gradient(var(--gradient));
		background-repeat: no-repeat;
		background-size: 100% 0.2em;
		background-position: 0 88%;
		transition: background-size 0.1s ease-in;
	}
	a:hover {
		background-size: 100% 69%;
	}
	h1 {
		font-family: monospace;
		font-size: 5em;
	}
	h2 {
		font-size: 5em;
		margin: 0;
	}
	p {
		font-family: sans-serif;
		font-size: 2em;
		margin: 10px;
	}
	strong {
		background: linear-gradient(var(--gradient));
		-webkit-background-clip: text;
		background-clip: text;
  		-webkit-text-fill-color: transparent;
	}
	@media screen and (max-width: 500px) {
		h1 {
			font-size: 2.5em;
		}
		p {
			font-size: 1.5em;
		}
	}
</style>