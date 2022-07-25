# code taken from here
# https://stackoverflow.com/questions/68095438/how-to-make-a-bump-chart
# https://github.com/kartikay-bagla/bump-plot-python

import pandas as pd
import matplotlib.pyplot as plt


def bumpchart(df, show_rank_axis=True, rank_axis_distance=1.1,
              ax=None, scatter=False, holes=False,
              line_args={}, scatter_args={}, hole_args={},
              index_name='', column_name='', value_name=''):
    if ax is None:
        left_yaxis = plt.gca()
    else:
        left_yaxis = ax

    # Creating the right axis.
    right_yaxis = left_yaxis.twinx()

    axes = [left_yaxis, right_yaxis]

    # Creating the far right axis if show_rank_axis is True
    if show_rank_axis:
        far_right_yaxis = left_yaxis.twinx()
        axes.append(far_right_yaxis)

    for col in df.columns:
        y = df[col]
        x = df.index.values
        # Plotting blank points on the right axis/axes
        # so that they line up with the left axis.
        for axis in axes[1:]:
            axis.plot(x, y, alpha=0)

        left_yaxis.plot(x, y, **line_args, solid_capstyle='round')

        # Adding scatter plots
        if scatter:
            left_yaxis.scatter(x, y, **scatter_args)

            # Adding see-through holes
            if holes:
                bg_color = left_yaxis.get_facecolor()
                left_yaxis.scatter(x, y, color=bg_color, **hole_args)

    # Number of lines
    lines = len(df.columns)

    y_ticks = [*range(1, lines + 1)]

    # Configuring the axes so that they line up well.
    for axis in axes:
        axis.invert_yaxis()
        axis.set_yticks(y_ticks)
        axis.set_xticks(range(1, 11))
        axis.set_xlabel(index_name)
        axis.set_ylim((lines + 0.5, 0.5))

    # Sorting the labels to match the ranks.
    left_labels = df.iloc[0].sort_values().index
    right_labels = df.iloc[-1].sort_values().index

    left_yaxis.set_yticklabels(left_labels)
    left_yaxis.set_ylabel(column_name)
    right_yaxis.set_yticklabels(right_labels)
    right_yaxis.set_ylabel(value_name)

    # Setting the position of the far right axis so that it doesn't overlap with the right axis
    if show_rank_axis:
        far_right_yaxis.spines["right"].set_position(("axes", rank_axis_distance))

    return axes