This seems like a predictive model (not that that's a bad thing)

Technically, a log-normal model is a LMM, not a GLMM (except to the extent that *all* LMMs are special cases of the GLMM). (The reason I call it an LMM is that using a (transformed) Gaussian response with an identity link allows us to avoid all of the complexities of picking a way to numerically approximate the integral over the latent variables ...)

I would say it's "rabies vaccine", not "anti-rabies vaccine" (even though I can see why you wrote it that way)

There's a whole area of ecological statistics dedicated to estimating *detection probability* jointly with *occupancy probability*; don't know if this observational design is suitable for that kind of analysis.

Which column was bad (not cleaned properly?)

You could conceivably use "predator species" as a random effect grouping variable in some contexts ...

It took me a little while to figure it out, but a "mouse weasel" (*Mustela nivalis*) is more commonly called a "least weasel"; I suspect that "mouse weasel" is probably a direct translation from German ... ("The German word for the least weasel, *mauswiesel*, refers to its tiny size." https://fwp.mt.gov/binaries/content/assets/fwp/montana-outdoors/outdoor-portraits/2015/leastweasel.pdf)

You could plot points per observation and join observations from the same site with a `geom_segment` (could be messy though)

I'm not crazy about bar plots: your bar plot of average distance to settlement could more informatively be a boxplot ... (not needing to include zero on the y-axis would make it easier to distinguish differences, although I agree that there's not much there)

I wouldn't say the limitation is the number of observations per group, but rather the number of sites (your maximal model would require an 8x8 covariance matrix = 36 parameters). On the other hand, a diagonal covariance matrix would only take 8 parameters ... (so I think you may have taken the easy way out, i.e. not digging through to find an intermediate-complexity model)

Interesting that you don't get a ribbon around the Q-Q plot -- this might magically appear if you installed the `qqplotr` package

dotplot: add reference line at coef=0?

How would you interpret these parameters (proportional differences), i.e. what is a 'small' (rather than just an uncertain) effect?

Since you know the coefficients are almost identical, wouldn't we expect all of the effect plots to be the same? the effects plot for brms seems to be including additional components of uncertainty (i.e. lme4/blme estimates condition on the estimate of the random effects ...)

"number of wild predators" "does not appear to impact the location of the next settlement" (1) maybe be a little more careful about language ("associated with"/"predict"); (2) distinguish between a small effect and an uncertain effect. I see how rarity could make the effect more uncertain, but not how it could make it smaller ...

When making effects plots, you might want to convert from natural log to log10 for interpretability ... (natural log is more useful for interpretability of *coefficients*)

To repeat, observations *per cluster* is less of a constraint than *number of clusters*; few observations per cluster makes the cluster-specific latent variables less precisely estimated, but doesn't really get in the way of estimating among-cluster variances (only in the limit where there is only one observation per cluster)

Very good: 18/20.
