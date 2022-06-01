	git add . &&  \
	git commit -am "ok" &&  \
	git checkout -b desen master &&  \
	git checkout -b hmlg master &&  \
	git push --set-upstream origin master &&  \
	git push --set-upstream origin desen &&  \
	git push --set-upstream origin hmlg  &&  \
	git checkout desen


git add . &&  \
git commit -am "ok" &&  \
git checkout -b hmlg desen &&  \
git checkout -b master desen &&  \
git push --set-upstream origin hmlg  &&  \
git push --set-upstream origin master &&  \
git checkout desen



git branch -d desen && git push origin --delete desen
git branch -d hmlg && git push origin --delete hmlg
git branch -d tst && git push origin --delete tst

git branch -d homol && git push origin --delete homol

 desen
hmlg
homol
hmlg
tst