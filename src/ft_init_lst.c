/* ************************************************************************** */
/*                                                          LE - /            */
/*                                                              /             */
/*   ft_init_list.c                                   .::    .:/ .      .::   */
/*                                                 +:+:+   +:    +:  +:+:+    */
/*   By: thbrouss <marvin@le-101.fr>                +:+   +:    +:    +:+     */
/*                                                 #+#   #+    #+    #+#      */
/*   Created: 2018/11/26 19:26:52 by thbrouss     #+#   ##    ##    #+#       */
/*   Updated: 2018/11/27 16:13:18 by thbrouss    ###    #+. /#+    ###.fr     */
/*                                                         /                  */
/*                                                        /                   */
/* ************************************************************************** */

#include "printf.h"

t_info	*ft_init_lst(void)
{
	t_info	*info;
	int		i;

	i = 0;
	info = malloc(sizeof(t_info));
	info->width = 0;
	info->prec = 0;
	info->length = 0;
	info->u_arg = 0;
	info->flag = 0;
	info->skip = 0;
	info->stop = 0;
	info->c_len = 0;
	info->i_arg = 0;
	info->is_prec = 0;
	while (i <= 6)
		info->extra[i++] = 0;
	info->pos[0] = 0;
	info->pos[1] = 0;
	info->next = NULL;
	return (info);
}
