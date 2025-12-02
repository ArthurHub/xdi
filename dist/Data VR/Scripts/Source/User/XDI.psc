Scriptname XDI Native Hidden

;------------------------
; XDI Functions
;------------------------

; Returns the version code of XDI. This value is incremented for every public release.
int Function GetVersionCode() native global

;------------------------
; TopicInfo Functions
;------------------------

; Sets the scene link on the given TopicInfo.
Function SetSceneLink(TopicInfo akTopicInfo, Scene akScene, int aiPhase) native global

; Retrieves the scene link for the given TopicInfo.
; Returns None if no scene link exists.
SceneLink Function GetSceneLink(TopicInfo akTopicInfo) native global

; Unsets the 'Said Once' and HasBeenSaid flags on the given TopicInfo.
; If run on player dialogue, this will un-dim the associated option in the dialogue menu.
; If run on NPC dialogue flagged as 'Say Once', this will allow the dialogue to be re-said.
Function ResetSaid(TopicInfo akTopicInfo) native global

Struct SceneLink
    Scene targetScene
    int   phase
EndStruct
