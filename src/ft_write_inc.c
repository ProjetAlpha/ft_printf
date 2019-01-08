/* ************************************************************************** */
/*                                                          LE - /            */
/*                                                              /             */
/*   ft_write_inc.c                                   .::    .:/ .      .::   */
/*                                                 +:+:+   +:    +:  +:+:+    */
/*   By: thbrouss <marvin@le-101.fr>                +:+   +:    +:    +:+     */
/*                                                 #+#   #+    #+    #+#      */
/*   Created: 2018/11/26 16:01:18 by thbrouss     #+#   ##    ##    #+#       */
/*   Updated: 2018/11/27 16:14:58 by thbrouss    ###    #+. /#+    ###.fr     */
/*                                                         /                  */
/*                                                        /                   */
/* ************************************************************************** */

#include "printf.h"

void	ft_wr_inc(char *str, size_t len, t_info *info)
{
	if (str && len > 0 && info)
	{
		write(1, str, len);
		info->c_len += len;
	}
}
