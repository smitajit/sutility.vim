fun!  bufutils#BClosePreviews()
	pclose
	lclose
	helpclose
	if exists('g:NERDTree') && g:NERDTree.IsOpen()
		NERDTreeToggle
	endif
endfun

fun! bufutils#BCloseAll()
	let s:count = 0
	let s:bufNr = bufnr("$")
	while s:bufNr > 0
			let s:res = bufutils#closeobuffer(s:bufNr)
			if s:res == "true"
				let s:count = s:count + 1
			endif
		let s:bufNr = s:bufNr - 1
	endwhile	
	echo "Closed " s:count " buffers"
endfun

fun! bufutils#BCloseLeft()
	let s:count = 0
	let s:bufNr = bufnr("$")
	let s:curNr = bufnr("%")
	while s:bufNr > 0
			if s:bufNr < s:curNr
				let s:res = bufutils#closeobuffer(s:bufNr)
				if s:res == "true"
					let s:count = s:count + 1
				endif
			endif
		let s:bufNr = s:bufNr - 1
	endwhile	
	echo "Closed " s:count " buffers"
endfun

fun! bufutils#BCloseRight()
	let s:count = 0
	let s:bufNr = bufnr("$")
	let s:curNr = bufnr("%")
	while s:bufNr > 0
			if s:bufNr > s:curNr
				let s:res = bufutils#closeobuffer(s:bufNr)
				if s:res == "true"
					let s:count = s:count + 1
				endif
			endif
		let s:bufNr = s:bufNr - 1
	endwhile	
	echo "Closed " s:count " buffers"
endfun

fun! bufutils#BCloseOther()
	let s:curbuf = bufnr("%")
	let s:count = 0
	let s:bufnr = bufnr("$")
	while s:bufnr > 0
		if s:bufnr != s:curbuf 
			let s:res = bufutils#closeobuffer(s:bufnr)
			if s:res == "true" 
				let s:count = s:count + 1
			endif
		endif
		let s:bufnr = s:bufnr - 1
	endwhile	
	echo "closed " s:count " buffers"
endfun


fun! bufutils#closeobuffer(bufNumber)
		if getbufvar(a:bufNumber , '&modified') == 0  
			try
				execute "bd ".a:bufNumber
				return "true"
			catch
			endtry

		endif
		return "false"
endfun

