﻿"Filed out from Dolphin Smalltalk 7"!

Shell subclass: #WADolphinServerAdaptorBrowser
	instanceVariableNames: 'adaptors adaptorDescription'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WADolphinServerAdaptorBrowser guid: (GUID fromString: '{6dc094c1-95bb-4b87-89fa-0a868faa8e17}')!
WADolphinServerAdaptorBrowser comment: ''!
!WADolphinServerAdaptorBrowser categoriesForClass!MVP-Presenters! !
!WADolphinServerAdaptorBrowser methodsFor!

addServer
	"Add a new server to the receiver."

	| adaptorClass port classes adaptor |
	classes := WAServerAdaptor allSubclasses.
	(adaptorClass := classes size > 1 
				ifTrue: [ChoicePrompter choices: classes caption: 'Please select the adaptor class:']
				ifFalse: [classes first]) ifNil: [^self].
	port := ((IntegerPrompter 
				create: 'Default view'
				on: 8080 asValue
				prompt: 'Server port?'
				caption: 'Add Server Adaptor:')
				interval: (1 to: 99999);
				showModal) ifNil: [^self].
	adaptor := adaptorClass port: port.
	adaptors model: self model adaptors.
	adaptors selectionOrNil: adaptor!

browseAdaptorClass
	"Browse the class of the selected server."

	adaptors selections first browse!

changeEncoding
	"Change the encoding of the selected servers."
	
	| codec |
	(codec := ChoicePrompter choices: GRCodec allCodecs) ifNil: [^self].
	adaptors selections do: [:each | each codec: codec].
	adaptors view updateAll.
	self describeSelectedAdaptor
!

clearAll
	"Clear all handles."

	WAAdmin clearSessions!

createComponents
	"Create the presenters contained by the receiver"

	super createComponents.
	adaptors := self add: ListPresenter new name: 'adaptors'.
	adaptorDescription := self add: TextPresenter new name: 'adaptorDescription'!

createSchematicWiring
	"Create the trigger wiring for the receiver"
	
	super createSchematicWiring.
	adaptors when: #selectionChanged send: #onAdaptorsSelectionChanged to: self
	!

describeAdaptor: aWAServerAdaptor 
	"Private - Describe the argument adaptor on the receiver."

	| text |
	text := aWAServerAdaptor 
				ifNil: [String new]
				ifNotNil: 
					['Type: <1d><n>Encoding: <2d><n><3d>' 
						expandMacrosWith: aWAServerAdaptor class
						with: aWAServerAdaptor codec
						with: (aWAServerAdaptor isRunning ifTrue: ['running'] ifFalse: ['stopped'])].
	adaptorDescription model: text!

describeSelectedAdaptor
	self describeAdaptor: adaptors selectionOrNil!

inspectSelected
	"Inspect the selected server."

	adaptors selections do: [:each | each inspect]!

launchWebBrowser
	adaptors selections notEmpty
		ifTrue: 
			[ShellLibrary default 
				shellOpen: 'http://localhost:' , adaptors selections first port printString , '/seaside/']!

model: aWAServerManager
	"Set the model associated with the receiver."

	super model: aWAServerManager.
	adaptors model: aWAServerManager adaptors!

onAdaptorsSelectionChanged
	"Handle #selectionChanged event on the adaptors presenter of the receiver."

	self describeSelectedAdaptor!

queryCommand: aCommandQuery
	"Private - Enters details about a potential command for the receiver into aCommandQuery"

	super queryCommand: aCommandQuery.
	(#(#removeServer #start #stop #changeEncoding #inspectSelected #browseAdaptorClass #launchWebBrowser)
		identityIncludes: aCommandQuery command)
			ifTrue: [aCommandQuery isEnabled: adaptors selections notEmpty]!

removeServer
	"Remove the selected server."
	
	(MessageBox confirm: 'Please, confirm remove the selected servers?') ifFalse: [^self].
	adaptors selections do: [:each | self model unregister: each].
	adaptors model: self model adaptors
!

start
	"Start the selected servers."
	
	adaptors selections do: [:each | self model start: each].
	SwazooServer singleton isWatchdogRunning ifFalse: [SwazooServer singleton startWatchdog].
	adaptors view updateAll.
	self describeSelectedAdaptor
!

stop
	"Stop the selected servers."
	
	adaptors selections do: [:each | self model stop: each].
	adaptors view updateAll.
	SwazooServer singleton allSites detect: [:one | one isServing] ifNone: [SwazooServer singleton stopWatchdog].
	self describeSelectedAdaptor
! !
!WADolphinServerAdaptorBrowser categoriesFor: #addServer!public! !
!WADolphinServerAdaptorBrowser categoriesFor: #browseAdaptorClass!public! !
!WADolphinServerAdaptorBrowser categoriesFor: #changeEncoding!public! !
!WADolphinServerAdaptorBrowser categoriesFor: #clearAll!public! !
!WADolphinServerAdaptorBrowser categoriesFor: #createComponents!public! !
!WADolphinServerAdaptorBrowser categoriesFor: #createSchematicWiring!public! !
!WADolphinServerAdaptorBrowser categoriesFor: #describeAdaptor:!public! !
!WADolphinServerAdaptorBrowser categoriesFor: #describeSelectedAdaptor!public! !
!WADolphinServerAdaptorBrowser categoriesFor: #inspectSelected!public! !
!WADolphinServerAdaptorBrowser categoriesFor: #launchWebBrowser!public! !
!WADolphinServerAdaptorBrowser categoriesFor: #model:!public! !
!WADolphinServerAdaptorBrowser categoriesFor: #onAdaptorsSelectionChanged!public! !
!WADolphinServerAdaptorBrowser categoriesFor: #queryCommand:!public! !
!WADolphinServerAdaptorBrowser categoriesFor: #removeServer!public! !
!WADolphinServerAdaptorBrowser categoriesFor: #start!public! !
!WADolphinServerAdaptorBrowser categoriesFor: #stop!public! !

!WADolphinServerAdaptorBrowser class methodsFor!

defaultModel
	"Answer the default model for the receiver."

	^WAServerManager default!

icon

	^SeasideIcons seaside!

initialize

	SmalltalkSystem current
		addSystemFolderIcon: (SmalltalkSystemFolder 
				icon: self icon
				description: 'Seaside Control Panel'
				openBlock: [:folder :item | self show])
		"to: (SmalltalkSystem current systemFolderNamed: 'Additional Tools')"!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 4 788558 10 ##(Smalltalk.STBViewProxy) ##(Smalltalk.ShellView) 34 27 nil nil 8 #(13565952 65536) 416 nil 786694 ##(Smalltalk.ColorDefault) 8 4278190080 328198 ##(Smalltalk.Point) 601 601 549 nil nil nil 416 788230 ##(Smalltalk.BorderLayout) 1 1 410 ##(Smalltalk.Toolbar) 34 25 nil 416 34 2 8 1409288972 131137 576 nil 480 nil 519 nil 263174 ##(Smalltalk.Font) nil true 459014 ##(Smalltalk.LOGFONT) 8 #[243 255 255 255 0 0 0 0 0 0 0 0 0 0 0 0 144 1 0 0 0 0 0 0 3 2 1 34 65 114 105 97 108 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] 514 193 193 nil 576 480 8 1805561120 170 192 8 #() 170 192 34 18 11041 1115206 1 ##(Smalltalk.ToolbarIconButton) 576 1 1180998 4 ##(Smalltalk.CommandDescription) #changeEncoding 8 'Change Encoding' 1 1 263494 3 ##(Smalltalk.Icon) nil true 1572870 ##(Smalltalk.ImageRelativeFileLocator) 8 'String.ico' 2032142 ##(Smalltalk.STBExternalResourceLibraryProxy) 8 'dolphindr7.dll' nil 11041 11043 818 576 1 850 #clearAll 8 'WAAdmin clearSessions (clearAllHandles)' 1 1 898 nil true 944 8 'Process.ico' 992 11043 11045 818 576 1 850 #inspectSelected 8 'Inspect' 1 1 898 nil true 944 8 'BasicInspector.ico' 992 11045 11047 818 576 1 850 #browseAdaptorClass 8 'Browse Adaptor Class' 1 1 898 nil true 944 8 'ClassBrowserShell.ico' 992 11047 11049 818 576 1 850 #launchWebBrowser 8 'Starts the default web browser on the Seaside config page.' 1 1 898 nil true 944 8 'shownextstatement.ico' 992 11049 11471 818 576 1 850 #addServer 8 'Add server' 1 1 898 nil true 944 8 'NewThing.ico' 992 11471 11473 818 576 1 850 #removeServer 8 'Remove server' 1 1 898 nil true 944 8 'EditClear.ico' 992 11473 11037 818 576 1 850 #start 8 'Start selected server' 1 1 787014 1 ##(Smalltalk.InternalIcon) 852742 ##(Smalltalk.GdiplusBitmap) nil true 2097670 ##(Smalltalk.GdiplusImageFromBytesInitializer) nil 8 #[137 80 78 71 13 10 26 10 0 0 0 13 73 72 68 82 0 0 0 48 0 0 0 48 8 6 0 0 0 87 2 249 135 0 0 0 1 115 82 71 66 0 174 206 28 233 0 0 0 4 103 65 77 65 0 0 177 143 11 252 97 5 0 0 0 9 112 72 89 115 0 0 14 194 0 0 14 194 1 21 40 74 128 0 0 12 87 73 68 65 84 104 67 237 153 123 120 147 245 21 199 163 19 104 41 93 108 107 47 233 37 41 233 45 77 105 218 38 105 115 105 218 52 73 147 230 250 230 210 220 83 96 130 50 17 40 80 81 25 40 165 181 220 134 34 23 231 112 32 90 25 151 2 162 226 101 8 168 8 45 165 80 160 64 91 160 64 21 1 55 16 152 236 15 209 41 191 223 206 239 165 101 113 195 233 158 149 212 63 150 231 57 207 251 228 109 158 244 124 206 249 158 75 126 47 131 241 19 95 84 157 194 69 61 35 111 178 214 23 35 75 189 236 144 177 174 104 149 230 233 252 71 53 181 5 122 93 173 136 167 95 166 31 38 122 73 52 164 182 182 246 222 159 248 149 161 253 88 48 0 213 32 239 181 204 151 238 50 206 151 172 210 55 20 62 169 125 74 228 148 79 205 203 47 121 76 48 82 58 93 26 237 218 228 250 5 163 150 113 47 3 51 238 9 173 151 255 225 191 125 15 96 158 252 26 181 72 126 150 122 86 222 110 152 39 93 175 125 90 52 87 241 40 223 39 159 156 93 82 50 89 48 146 100 130 64 252 172 178 17 12 96 93 160 192 182 197 10 100 91 90 114 211 180 64 214 169 123 90 188 89 62 49 167 94 49 153 239 147 77 17 20 40 95 81 134 245 67 252 236 50 0 117 128 108 203 148 184 114 141 26 185 54 235 144 109 157 230 60 245 114 89 171 97 121 241 230 138 101 178 185 170 133 82 119 225 19 121 57 226 154 156 20 197 204 220 168 159 141 156 168 6 153 203 220 32 107 34 0 142 85 42 236 122 75 143 125 173 54 236 254 200 114 221 249 158 225 51 219 22 109 167 121 173 106 131 110 153 124 182 100 42 159 146 61 150 83 40 170 22 177 249 181 252 161 202 90 229 125 131 46 167 126 0 75 131 12 85 174 43 199 222 102 10 143 185 224 195 129 19 46 236 107 179 33 247 78 51 178 109 213 29 169 248 189 226 213 162 106 254 116 2 33 174 22 140 146 62 39 13 39 16 116 38 6 243 21 156 1 26 160 5 0 62 247 226 170 211 110 28 232 168 68 190 22 27 170 220 97 236 165 154 52 31 148 191 32 91 173 93 42 125 162 116 65 161 93 86 205 27 37 170 230 179 149 181 121 247 15 170 156 250 139 152 72 200 73 0 246 81 120 244 159 1 224 19 15 174 130 44 4 142 184 176 167 197 122 165 114 187 241 20 181 73 221 106 108 44 89 163 93 34 125 130 150 83 117 78 97 49 64 12 106 119 10 238 66 52 64 43 0 92 242 224 209 231 189 120 76 47 216 73 31 246 31 174 252 214 179 215 242 85 229 142 138 235 212 38 85 171 110 133 108 181 116 50 111 186 116 74 142 165 120 90 118 206 160 118 167 96 0 90 66 173 86 92 117 9 50 240 153 23 143 62 11 214 237 5 41 57 191 131 122 248 134 134 216 174 239 33 114 34 53 81 190 92 62 75 53 79 232 46 156 202 207 23 76 206 132 97 199 15 253 176 163 234 100 244 42 65 213 203 161 136 181 216 67 3 248 1 192 7 117 224 69 85 157 30 20 56 230 186 233 39 16 36 19 205 214 43 206 29 230 179 118 40 108 210 157 84 207 73 230 22 76 202 240 10 31 201 40 17 79 203 229 134 92 78 193 0 14 26 192 134 3 151 2 56 112 14 58 81 143 23 156 119 211 16 85 144 137 209 32 39 82 19 222 86 59 114 127 104 185 105 221 170 59 174 89 46 221 92 240 72 70 93 254 175 51 124 226 41 217 161 31 118 183 0 100 176 204 245 181 209 190 12 4 206 129 116 250 0 2 199 1 160 19 100 213 69 228 228 198 254 118 232 78 0 81 185 211 244 153 169 73 221 170 89 33 221 172 90 34 169 43 93 88 232 46 132 154 40 154 146 158 44 122 82 196 12 73 119 181 215 21 185 172 52 128 20 36 164 161 139 184 234 50 200 7 106 32 112 218 131 252 199 221 40 64 236 24 116 165 99 0 113 212 131 3 71 73 139 37 221 201 118 221 177 195 116 222 188 85 219 165 95 171 220 168 94 33 153 45 158 154 69 9 171 121 34 249 164 172 196 16 2 72 154 108 245 18 104 163 106 152 194 22 60 250 50 41 98 112 180 15 192 15 50 10 116 192 251 35 183 32 72 97 143 57 5 114 58 10 16 109 118 236 220 109 193 212 91 218 142 242 149 242 70 209 164 204 26 225 196 12 83 225 36 94 102 200 0 168 103 36 144 1 9 100 64 141 61 251 45 56 240 5 68 255 60 56 124 6 50 208 233 166 179 224 135 200 251 9 4 201 68 23 153 17 240 153 99 110 12 133 77 67 56 62 48 246 154 54 171 62 44 91 33 121 89 249 188 248 241 210 249 5 20 129 16 62 204 99 201 199 101 69 222 53 24 10 36 68 0 40 0 176 175 87 99 247 126 51 246 93 241 96 223 69 112 248 44 56 220 13 215 78 176 227 224 44 72 199 7 0 228 125 0 32 0 14 238 187 176 255 152 19 59 91 169 171 214 157 250 30 195 22 229 254 138 198 226 53 202 231 139 30 23 78 74 55 11 39 165 9 133 211 120 172 187 10 96 6 0 11 0 216 0 192 217 102 198 158 171 30 236 253 28 28 236 5 71 79 192 21 156 245 129 179 94 136 56 49 31 129 1 35 247 171 78 194 208 235 241 98 111 135 227 219 202 125 230 27 214 157 186 191 17 8 146 137 144 200 201 4 25 48 1 128 185 14 0 64 66 206 86 51 246 66 13 248 46 220 2 240 159 4 71 79 128 195 93 96 0 65 59 223 9 139 30 152 31 238 5 224 111 85 167 0 240 152 227 59 231 65 235 55 246 102 211 13 203 123 186 30 237 58 229 135 138 103 11 27 101 11 69 51 139 106 243 108 153 99 57 188 172 113 41 137 89 3 45 39 2 96 168 43 106 130 223 194 200 186 86 141 93 205 22 236 135 101 206 7 93 200 223 11 218 239 113 35 223 73 184 146 237 180 235 182 33 0 64 190 110 23 34 0 1 128 244 30 119 34 207 81 128 56 108 255 59 181 219 116 69 255 102 121 175 250 149 146 142 146 223 73 214 137 231 229 207 74 27 155 108 227 142 75 17 103 140 73 78 26 80 57 233 1 0 172 201 48 23 0 94 3 128 61 80 196 231 97 255 249 244 22 128 239 52 56 218 227 66 254 147 16 113 128 240 119 3 68 183 19 249 186 192 224 74 222 211 112 112 245 118 187 145 167 203 141 236 173 54 100 218 97 192 218 45 26 164 92 83 124 84 188 160 96 93 250 216 148 153 105 191 74 177 146 76 132 6 224 19 200 194 105 55 242 66 148 189 93 0 1 197 234 131 182 73 204 219 1 247 250 172 255 158 27 186 145 243 160 131 118 222 184 221 240 149 102 163 234 90 201 139 178 139 210 197 162 237 121 179 70 45 78 117 37 142 77 117 39 148 114 60 241 169 161 1 128 69 206 7 5 76 23 46 76 95 207 33 176 118 176 131 196 160 255 31 0 35 87 242 30 238 87 182 56 176 21 230 1 137 124 249 70 213 85 197 11 146 51 194 217 185 7 5 51 178 215 240 38 164 213 176 84 209 186 56 117 156 96 164 58 46 62 52 0 103 160 179 64 187 164 29 7 39 221 251 193 246 245 89 11 92 251 173 239 158 237 3 27 54 189 75 203 6 147 200 19 231 51 188 236 55 185 246 164 134 100 109 188 55 34 121 72 110 88 98 88 74 20 151 49 176 43 6 169 1 29 212 128 126 110 33 162 94 131 223 196 253 53 112 27 0 32 250 1 90 9 128 11 156 119 97 23 152 115 79 37 118 236 182 99 226 188 97 155 254 43 205 250 178 107 138 149 210 139 69 11 132 45 130 26 222 58 174 45 113 30 199 148 56 46 73 19 83 22 198 10 99 71 38 70 198 176 88 140 225 3 154 1 109 157 200 165 155 43 110 210 1 128 165 81 5 78 245 21 241 105 31 180 74 47 242 182 123 144 231 32 88 27 56 223 10 142 19 107 113 33 87 179 19 217 63 178 35 106 7 200 6 34 175 249 163 234 154 252 5 201 217 252 218 156 118 193 140 172 245 153 15 113 107 147 203 227 124 73 202 152 50 150 44 134 71 71 158 56 47 98 12 25 112 0 45 0 128 33 115 99 217 29 0 188 255 4 216 79 0 156 0 224 68 206 230 74 100 221 69 33 227 59 122 90 54 36 242 196 121 238 152 164 109 169 158 132 249 172 138 7 124 17 73 67 4 119 69 54 193 17 32 25 32 0 144 5 200 64 16 192 25 200 64 23 100 224 48 68 191 221 141 220 7 220 216 213 230 162 139 213 190 219 134 168 93 22 100 216 86 113 67 179 161 236 122 233 31 100 151 139 22 11 219 114 159 228 53 113 220 9 11 217 182 184 135 227 213 49 170 187 38 155 96 0 253 28 144 208 28 81 19 28 228 34 203 171 0 240 177 249 214 28 128 26 128 46 4 237 18 0 14 3 64 59 68 191 205 137 109 123 172 216 178 203 132 12 239 234 144 122 131 242 75 136 252 121 241 130 188 174 252 217 252 173 89 143 114 231 39 104 99 199 198 105 162 203 19 74 163 179 239 154 108 238 4 80 1 0 84 48 0 105 163 39 1 0 86 105 207 17 208 252 33 40 218 3 78 76 65 171 52 252 169 2 105 94 47 67 138 213 146 75 226 5 130 46 126 53 119 119 230 120 206 114 182 131 53 62 60 57 188 112 88 202 176 52 38 155 25 53 160 90 255 161 47 211 66 6 192 154 180 36 3 180 132 32 3 23 97 10 147 65 214 3 0 176 78 187 14 87 34 59 172 204 214 189 20 134 200 127 173 217 164 188 94 178 90 114 185 104 73 193 97 136 252 219 89 227 216 47 166 249 82 106 82 204 241 150 17 156 17 217 0 145 20 147 21 243 67 43 244 61 125 167 219 3 115 194 77 0 52 0 80 14 0 230 70 56 27 109 54 225 42 56 23 242 159 131 5 237 12 204 128 110 24 82 135 236 152 106 54 35 195 206 10 164 222 162 188 174 88 13 178 89 36 232 206 127 58 251 109 254 164 180 101 108 43 107 74 146 49 214 17 175 136 151 132 39 133 39 147 118 201 72 102 132 255 91 208 224 88 30 99 124 15 57 142 36 215 1 57 166 87 3 0 88 147 26 0 76 175 1 64 11 0 192 185 144 31 126 208 248 122 1 0 22 53 123 187 21 27 119 235 81 249 59 42 84 210 40 189 92 184 88 208 157 51 149 187 39 243 33 246 202 84 59 171 154 201 141 208 48 211 134 11 65 54 35 153 28 230 253 241 241 241 17 119 108 151 0 64 156 191 125 68 63 16 207 25 250 1 52 181 66 26 192 177 207 132 253 151 97 120 157 131 162 61 229 192 142 14 152 176 187 97 72 189 89 118 85 177 70 114 161 104 105 65 91 126 45 20 236 4 206 138 180 64 74 13 219 144 80 201 100 15 23 70 114 35 51 98 57 177 9 177 252 216 17 28 14 39 140 161 100 220 23 146 12 104 231 228 131 132 10 154 8 128 113 109 41 0 24 177 239 11 15 118 125 234 192 182 78 10 153 219 12 168 252 221 178 171 197 175 72 78 23 52 140 58 144 59 139 183 49 123 50 119 62 219 201 26 79 52 31 167 140 150 146 200 63 192 30 206 34 209 79 79 79 31 38 18 137 200 176 250 161 71 82 3 93 3 183 0 202 107 11 104 0 123 171 17 123 224 39 165 163 215 134 205 71 140 168 226 99 13 42 221 40 187 32 92 148 123 32 253 193 148 55 82 125 137 243 147 42 98 71 135 167 132 139 65 235 89 68 243 76 38 243 254 216 216 216 17 196 121 151 235 246 19 156 129 41 210 31 107 101 244 28 128 65 166 135 65 102 124 73 129 45 219 52 200 218 110 66 166 189 186 175 117 239 171 175 171 223 40 189 92 188 186 176 45 191 142 191 145 11 206 67 171 156 192 42 139 173 136 76 141 204 138 98 69 177 71 164 143 0 223 99 71 36 39 39 135 147 200 223 46 80 70 136 158 163 153 224 96 203 84 39 105 50 213 73 145 97 105 49 210 175 41 65 186 215 203 110 150 111 40 249 82 245 170 252 124 201 202 162 19 146 197 5 91 115 103 100 209 145 103 149 199 86 36 202 152 5 36 242 196 249 40 110 20 147 163 228 132 241 249 252 161 12 23 131 60 43 32 145 15 77 244 73 118 130 15 119 13 243 101 168 252 183 69 55 75 159 19 127 167 88 36 186 36 111 200 239 46 154 147 183 87 56 35 103 69 246 216 145 227 161 88 69 36 242 209 208 231 137 222 233 130 5 231 201 147 26 34 157 1 105 139 63 38 153 127 253 123 48 128 254 25 201 13 85 189 232 154 172 62 239 115 201 28 65 123 225 204 81 219 242 107 178 87 142 154 200 171 73 119 167 192 144 26 10 91 101 24 59 129 200 6 156 79 150 38 135 243 93 240 148 166 95 247 3 209 22 255 23 128 138 57 69 127 45 253 77 222 167 226 199 179 59 10 166 241 222 16 60 146 177 132 87 149 54 57 195 201 177 167 26 227 37 209 32 155 8 110 68 92 116 122 244 47 191 39 155 91 142 135 78 54 193 144 193 25 208 205 22 255 69 62 45 231 104 238 67 220 247 121 1 206 178 145 166 196 137 204 44 166 138 153 193 204 103 102 14 27 201 100 51 162 98 178 24 145 131 46 155 96 0 115 157 92 6 207 6 166 91 235 229 155 0 96 149 124 106 206 179 0 240 84 86 21 231 193 84 51 75 23 149 29 149 3 16 169 36 242 241 241 140 136 100 88 17 72 183 25 84 217 4 3 88 103 151 164 16 8 123 131 194 85 241 148 152 130 12 232 114 39 164 150 102 123 57 5 233 250 148 52 226 56 189 30 8 24 17 12 62 99 40 61 97 73 183 25 76 217 220 161 78 130 167 99 191 158 7 71 211 255 109 17 255 255 243 119 41 2 255 0 93 132 235 124 102 146 56 126 0 0 0 0 73 69 78 68 174 66 96 130] nil 11037 11039 818 576 1 850 #stop 8 'Stop selected server' 1 1 1554 1586 nil true 1618 nil 8 #[137 80 78 71 13 10 26 10 0 0 0 13 73 72 68 82 0 0 0 48 0 0 0 48 8 6 0 0 0 87 2 249 135 0 0 0 1 115 82 71 66 0 174 206 28 233 0 0 0 4 103 65 77 65 0 0 177 143 11 252 97 5 0 0 0 9 112 72 89 115 0 0 14 194 0 0 14 194 1 21 40 74 128 0 0 11 65 73 68 65 84 104 67 221 154 107 83 147 215 22 199 61 223 227 244 123 212 23 231 140 87 16 36 120 35 128 129 152 64 32 16 72 8 23 5 2 4 16 21 84 188 160 104 171 181 181 181 218 218 240 117 58 199 34 17 84 8 40 222 166 19 208 119 39 235 252 255 251 217 59 121 114 37 237 248 230 216 153 223 60 79 210 25 179 126 123 175 189 246 218 91 119 237 250 18 254 91 11 133 254 185 22 234 251 122 35 212 91 151 8 134 157 121 4 240 29 81 255 47 136 247 108 94 226 115 134 0 222 53 126 60 179 240 227 115 54 43 62 191 115 197 231 43 130 215 185 226 114 57 87 234 234 156 43 181 181 206 231 14 199 215 241 35 71 190 202 27 115 6 191 30 10 247 174 5 195 177 117 59 221 248 76 2 164 39 182 214 77 130 177 181 64 46 221 248 78 211 25 136 173 105 86 253 129 152 69 103 236 133 194 111 209 110 104 143 189 240 17 95 236 185 102 25 207 101 95 107 108 185 149 120 99 203 46 87 108 185 174 46 182 92 83 67 250 158 215 212 236 150 93 187 254 145 37 193 145 93 15 245 254 150 8 246 254 23 164 210 116 227 189 59 156 74 116 145 158 20 4 64 40 181 214 69 130 41 136 40 86 3 221 25 58 187 82 171 154 151 29 129 148 69 103 10 2 160 195 162 221 175 105 79 61 111 35 109 169 21 226 243 165 32 0 90 83 16 0 45 169 229 38 87 10 2 169 101 135 35 69 137 21 135 163 190 176 0 70 158 129 191 30 24 148 183 145 168 124 152 60 39 31 38 200 148 124 24 183 120 63 113 214 98 124 210 34 58 161 120 23 29 207 48 134 119 69 84 222 141 146 49 48 42 111 71 200 136 69 36 146 230 205 112 68 222 12 15 91 12 13 201 38 57 61 32 155 189 189 178 25 10 202 122 107 139 172 54 54 10 2 151 149 154 154 133 29 4 194 169 183 145 49 249 115 250 146 124 154 255 38 135 219 242 233 38 185 101 113 99 62 195 220 77 249 100 184 126 67 62 105 62 94 159 19 197 181 235 22 87 175 89 92 185 170 185 130 167 197 54 153 157 181 56 127 94 182 199 199 101 27 50 239 3 1 89 111 106 42 95 224 195 228 148 10 92 30 199 242 249 245 55 17 197 99 145 95 200 175 22 143 126 201 240 16 239 138 71 154 135 34 63 255 108 241 224 129 197 79 63 21 230 199 31 69 200 237 219 34 16 146 169 41 217 230 76 120 60 127 83 224 17 130 123 128 0 238 227 7 201 15 248 195 21 247 69 190 39 63 88 220 251 62 195 119 120 87 220 179 184 251 29 184 43 114 135 220 177 248 246 91 27 24 172 111 52 12 156 92 187 38 114 233 34 4 206 66 32 12 129 83 178 236 168 65 10 29 46 145 66 168 48 9 44 82 230 252 167 121 252 33 156 1 6 127 15 129 222 198 143 222 198 143 222 194 15 221 194 255 35 243 183 50 220 156 23 49 220 184 41 66 230 110 104 230 68 144 70 114 253 58 2 51 32 64 6 121 245 170 6 163 205 17 191 50 43 130 20 146 139 51 34 23 206 67 96 82 182 122 123 228 181 199 13 129 195 242 12 2 113 71 117 145 69 92 72 128 163 206 224 175 224 135 175 224 7 103 241 131 179 248 33 114 25 63 100 184 116 25 35 166 185 120 9 1 128 25 140 32 153 70 48 228 194 180 141 11 120 7 200 117 57 127 78 228 220 148 74 23 142 184 156 37 147 42 120 153 154 128 64 8 2 205 242 204 81 13 129 170 29 4 80 30 63 140 159 197 12 96 116 31 35 215 239 51 31 49 242 12 30 11 47 29 188 93 160 88 224 51 58 240 105 19 56 3 54 48 112 112 206 4 111 11 124 18 129 79 78 64 130 140 203 86 56 8 129 38 8 84 149 16 192 78 170 54 39 8 188 167 0 170 140 90 172 204 119 166 141 26 121 112 217 54 242 133 70 189 232 200 219 2 87 65 3 53 226 122 212 213 200 35 112 194 224 21 227 10 37 112 202 8 28 194 12 84 22 72 33 35 128 77 233 125 116 18 2 200 105 86 26 46 86 230 123 169 180 41 150 50 89 35 111 27 113 19 184 74 149 2 129 79 32 112 69 84 177 213 211 13 1 23 102 224 16 102 160 44 129 9 212 119 44 66 150 71 86 24 166 83 58 101 202 200 117 6 174 130 183 229 121 161 81 255 43 2 238 147 8 190 178 184 0 27 49 246 50 108 9 222 141 105 1 214 118 35 144 181 88 177 64 47 233 133 90 114 177 22 73 155 98 129 51 101 108 35 47 19 99 248 60 134 25 232 146 87 16 136 67 32 126 184 98 33 94 93 32 133 178 5 198 177 171 162 4 114 35 98 125 103 58 81 64 229 60 3 71 101 33 69 171 140 189 194 232 133 90 44 109 114 115 190 152 64 115 35 131 223 65 160 19 51 128 38 140 61 76 70 0 27 17 5 24 124 86 174 155 10 195 167 73 25 157 54 170 52 154 10 99 22 107 145 124 183 45 86 147 243 50 142 145 87 140 42 182 66 1 121 181 163 0 122 246 85 180 192 47 41 128 6 140 253 139 60 196 38 198 157 148 235 33 45 192 145 71 208 121 37 210 4 175 107 123 110 206 155 180 81 37 210 94 105 80 109 236 139 118 28 11 183 128 192 70 83 131 44 85 31 148 120 213 193 133 197 234 3 249 85 136 135 14 246 237 108 125 217 61 102 4 208 6 80 32 47 215 109 181 221 44 86 179 49 217 75 164 61 223 237 129 167 131 206 84 155 116 224 81 140 188 98 68 177 21 236 148 191 47 192 62 6 93 166 204 32 247 167 205 174 154 83 101 184 229 219 211 166 80 109 231 166 148 149 46 246 5 107 75 25 91 224 18 141 64 32 2 129 14 8 212 99 6 14 148 158 1 235 196 212 153 98 223 206 214 87 117 143 108 194 184 160 211 193 155 150 64 47 212 116 240 122 71 85 45 129 201 119 60 237 41 51 145 147 46 172 243 233 148 177 141 250 24 70 126 204 10 94 162 195 146 164 128 203 41 79 171 14 128 253 197 83 168 160 0 59 72 244 246 114 1 163 127 161 64 240 74 192 214 14 216 119 212 146 21 198 218 164 210 139 85 167 139 10 92 49 172 130 151 232 16 4 252 16 168 99 240 59 8 168 115 106 71 234 237 224 144 124 100 137 100 219 139 195 135 234 95 34 24 161 8 70 6 39 41 137 224 15 38 195 67 25 134 6 69 6 207 88 156 57 157 1 39 43 81 244 139 12 144 190 108 250 123 241 57 44 210 175 233 235 17 81 132 240 29 9 74 178 205 35 27 245 71 75 11 240 102 128 7 237 231 56 171 190 25 24 144 143 156 250 107 232 125 152 18 56 234 73 8 127 24 9 6 109 116 227 29 116 119 137 116 5 108 116 226 93 19 232 16 81 248 69 58 73 187 69 71 91 14 62 17 63 105 21 105 215 248 91 240 185 69 146 238 6 89 63 238 144 197 67 251 201 194 98 101 129 42 164 4 112 59 192 3 246 155 112 88 62 114 164 153 26 28 101 156 75 165 197 107 225 245 100 192 33 67 12 167 220 34 105 154 241 174 113 55 137 40 92 34 205 228 164 69 83 99 6 212 120 33 234 187 6 17 151 6 11 87 64 210 121 84 214 107 171 118 22 120 14 129 21 35 128 131 183 58 80 48 85 122 48 242 56 88 43 140 136 122 66 134 40 41 155 12 14 31 146 6 34 232 229 5 221 164 130 34 74 70 139 240 137 54 65 161 190 179 139 65 164 185 1 2 199 180 192 62 72 236 43 54 3 62 39 239 101 86 124 109 169 205 112 175 108 143 66 96 6 229 146 79 28 233 164 13 211 235 35 152 222 86 162 133 90 33 66 140 76 238 147 98 10 35 149 35 100 151 50 114 233 167 37 150 172 63 38 137 35 85 242 71 37 4 42 246 45 252 167 114 111 254 70 198 155 49 235 66 73 11 140 97 209 242 88 199 103 31 22 90 59 114 182 141 216 68 218 32 210 6 17 31 209 34 70 40 253 196 236 180 114 166 32 65 40 162 100 180 136 125 118 204 44 165 159 152 41 180 209 201 250 227 90 96 47 4 246 148 16 80 55 97 62 107 6 198 176 185 240 80 29 69 169 99 245 232 192 2 244 131 14 44 64 63 129 140 66 47 190 118 60 137 146 178 3 57 37 9 65 37 169 133 90 33 99 48 114 45 16 51 40 81 72 130 100 195 137 50 4 188 94 167 117 149 215 10 129 176 108 71 33 112 25 13 28 183 124 150 193 0 170 138 194 84 21 93 89 236 213 133 114 134 60 65 93 89 40 147 139 145 83 79 8 250 32 167 128 68 171 91 146 39 235 36 113 180 90 254 168 216 83 98 6 40 224 197 61 100 75 139 22 192 200 243 118 128 229 148 181 157 165 146 4 81 46 13 221 16 50 228 150 77 85 50 11 148 77 51 99 29 152 45 131 249 142 37 84 149 78 136 180 19 200 96 15 72 98 23 46 91 224 89 139 55 181 137 69 203 91 49 117 229 97 246 1 86 162 30 148 83 5 106 63 9 65 200 16 164 28 37 181 96 90 14 51 213 69 32 195 217 202 3 179 22 48 32 37 59 33 102 232 128 16 72 162 18 37 142 29 46 61 3 113 204 192 51 175 39 246 204 235 77 189 198 77 216 22 71 126 14 45 53 59 76 83 137 88 141 112 71 147 1 82 184 242 16 28 186 21 70 12 39 40 33 74 14 66 36 119 214 208 97 138 161 27 130 221 144 75 3 161 46 2 161 64 27 54 178 70 73 28 175 41 79 32 238 245 164 94 163 234 108 177 13 190 201 54 26 149 200 44 100 182 1 253 4 85 73 145 179 253 83 134 244 65 134 244 18 204 84 88 147 22 212 51 168 62 83 22 130 61 16 34 33 27 104 226 4 36 61 46 73 156 112 148 33 224 241 196 226 158 83 150 0 91 226 121 30 37 209 70 179 139 84 253 141 173 175 97 111 115 26 50 100 128 253 140 238 105 216 215 12 96 150 72 63 161 144 198 8 42 49 155 32 37 123 33 66 194 54 148 88 64 146 45 205 146 168 171 221 65 192 237 118 46 121 220 177 37 8 188 50 2 188 163 156 69 37 98 87 57 140 102 109 8 139 153 12 66 102 16 50 20 58 3 17 50 8 145 51 6 200 156 1 167 53 185 114 74 76 55 108 74 78 207 88 145 103 18 149 168 60 1 55 4 78 185 45 1 158 170 120 225 122 21 23 89 92 200 35 236 64 209 23 17 202 12 107 153 33 200 144 97 200 24 134 32 68 6 53 74 210 38 119 26 179 68 204 76 237 240 100 55 154 112 30 41 99 6 220 205 16 104 182 4 216 200 221 193 149 34 59 82 190 143 162 185 163 68 90 132 18 90 132 50 17 72 24 210 34 144 26 50 104 169 33 136 112 182 6 245 44 113 166 118 32 137 146 154 64 59 93 114 31 88 116 187 156 75 16 120 234 110 78 109 96 129 110 177 145 187 139 243 192 28 206 3 211 120 55 167 36 138 140 66 132 140 96 54 12 17 200 40 40 147 43 196 25 178 205 82 122 134 140 76 233 103 18 123 67 153 2 46 8 52 89 2 12 250 30 78 99 55 112 180 156 65 41 53 103 85 35 194 83 147 17 201 146 129 196 8 129 68 30 144 24 49 51 101 75 57 123 250 21 120 79 98 47 72 52 28 43 103 6 44 129 85 180 11 111 81 101 182 120 177 138 156 223 162 16 234 184 2 27 20 73 18 108 80 105 176 65 37 21 237 26 212 111 214 112 133 47 27 108 84 201 78 108 80 220 164 202 96 19 27 217 139 157 54 50 43 133 44 129 21 244 242 107 232 38 95 161 57 123 133 246 120 3 221 225 134 171 17 52 168 235 13 222 16 108 184 192 73 167 172 55 90 108 160 95 49 172 55 158 192 119 4 93 100 131 29 180 197 24 201 191 10 131 143 215 84 148 63 3 75 245 117 18 63 90 139 43 12 220 69 130 165 170 138 12 184 92 226 5 211 211 42 112 232 128 224 120 167 120 138 227 158 97 145 125 187 98 47 126 148 236 249 108 20 109 167 159 184 79 238 94 106 118 245 97 6 22 226 206 186 133 248 145 218 133 120 21 46 82 243 56 136 239 14 46 64 96 1 1 47 44 86 88 240 221 192 67 135 197 158 207 206 147 131 123 250 159 84 238 207 255 139 238 223 27 26 190 138 67 34 142 13 109 209 121 162 62 126 212 81 207 91 96 178 152 197 1 124 214 224 112 205 3 118 62 123 241 157 5 79 79 159 147 39 149 255 222 253 123 197 191 242 255 169 1 255 218 158 127 251 253 255 192 151 240 111 83 190 44 135 255 1 58 18 247 46 176 68 57 88 0 0 0 0 73 69 78 68 174 66 96 130] nil 11039 34 12 1344 1424 1049158 1 ##(Smalltalk.ToolbarSeparator) 576 1 1504 1664 832 1794 576 1 1024 1104 1184 1794 576 1 1264 nil nil 1 nil 514 33 33 514 45 45 nil nil 983302 ##(Smalltalk.MessageSequence) 138 144 34 2 721670 ##(Smalltalk.MessageSend) #createAt:extent: 34 2 514 1 1 514 569 51 576 1954 #updateSizePosted 768 576 983302 ##(Smalltalk.WINDOWPLACEMENT) 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 28 1 0 0 25 0 0 0] 8 #() 514 193 193 nil 27 410 ##(Smalltalk.StatusBar) 34 18 nil 416 34 2 8 1140853004 1 2128 nil 480 nil 7 nil 642 nil true 674 8 #[243 255 255 255 0 0 0 0 0 0 0 0 0 0 0 0 144 1 0 0 0 0 0 0 3 2 1 34 65 114 105 97 108 0 159 4 0 134 63 1 0 0 204 53 63 1 2 0 20 59 0 0 0 0 247 0 5 86 111 1] 514 193 193 nil 2128 nil 8 1805443680 170 192 768 34 1 853766 ##(Smalltalk.StatusBarItem) 1 -1 2128 nil 459270 ##(Smalltalk.Message) #displayString 8 #() 2304 1049926 1 ##(Smalltalk.IconImageManager) 1115142 ##(Smalltalk.StatusBarNullItem) 513 1 2128 nil nil 1890 138 144 34 1 1954 #createAt:extent: 34 2 514 1 479 514 569 45 2128 2050 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 239 0 0 0 28 1 0 0 5 1 0 0] 8 #() 2112 nil 27 nil nil 410 ##(Smalltalk.ContainerView) 34 15 nil 416 34 2 8 1140850688 131073 2608 nil nil nil 7 nil nil nil 2608 1180166 ##(Smalltalk.ProportionalLayout) 170 176 768 true 170 192 34 4 410 ##(Smalltalk.ListView) 34 30 nil 2608 34 2 8 1140936777 1025 2752 590662 2 ##(Smalltalk.ListModel) 138 144 768 nil 1310726 ##(Smalltalk.IdentitySearchPolicy) 480 nil 7 nil nil nil 2752 nil 8 1805510768 2338 #displayString 8 #() ##(Smalltalk.IconicListAbstract) 2400 nil nil nil nil nil nil 138 144 34 1 920646 5 ##(Smalltalk.ListViewColumn) 8 'Column 1' 561 #left 2338 #displayString 2928 ##(Smalltalk.SortedCollection) nil nil 2752 nil 3 nil nil #report 768 nil 131169 nil 8 #(nil) 1890 138 144 34 2 1954 #createAt:extent: 34 2 514 1 1 514 569 209 2752 1954 #text: 34 1 8 'Column 1' 2752 2050 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 28 1 0 0 104 0 0 0] 8 #() 2112 nil 27 8 'adaptors' 410 ##(Smalltalk.MultilineTextEdit) 34 16 nil 2608 34 2 8 1143017796 1025 3280 nil 480 nil 7 nil nil nil 3280 nil 8 1805458944 852486 ##(Smalltalk.NullConverter) nil nil 9 1890 138 144 34 1 1954 #createAt:extent: 34 2 514 1 219 514 569 211 3280 2050 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 109 0 0 0 28 1 0 0 214 0 0 0] 8 #() 2112 nil 27 8 'adaptorDescription' nil 1890 138 144 34 1 1954 #createAt:extent: 34 2 514 1 51 514 569 429 2608 2050 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 25 0 0 0 28 1 0 0 239 0 0 0] 34 3 2752 410 ##(Smalltalk.Splitter) 34 12 nil 2608 34 2 8 1140850688 1 3728 nil 480 nil 519 nil nil nil 1510470 1 ##(Smalltalk.DraggableViewInteractor) 3728 nil 1 #left nil nil nil 514 1 1 514 9 9 nil 3824 nil 1890 138 144 34 1 1954 #createAt:extent: 34 2 514 1 209 514 569 11 3728 2050 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 104 0 0 0 28 1 0 0 109 0 0 0] 8 #() 2112 nil 27 3280 2112 nil 27 170 192 768 nil nil nil nil nil 1 nil nil nil nil 1 nil nil 1890 138 144 34 3 1954 #createAt:extent: 34 2 514 2731 21 514 601 601 416 1954 #text: 34 1 8 'Seaside Control Panel' 416 1954 #updateMenuBar 768 416 2050 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 23 5 0 0 10 0 0 0 67 6 0 0 54 1 0 0] 34 3 576 2608 2128 2112 nil 27 )! !
!WADolphinServerAdaptorBrowser class categoriesFor: #defaultModel!public! !
!WADolphinServerAdaptorBrowser class categoriesFor: #icon!public! !
!WADolphinServerAdaptorBrowser class categoriesFor: #initialize!public! !
!WADolphinServerAdaptorBrowser class categoriesFor: #resource_Default_view!public!resources-views! !
