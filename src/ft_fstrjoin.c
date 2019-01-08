/* ************************************************************************** */
/*                                                          LE - /            */
/*                                                              /             */
/*   ft_fstrjoin.c                                    .::    .:/ .      .::   */
/*                                                 +:+:+   +:    +:  +:+:+    */
/*   By: thbrouss <marvin@le-101.fr>                +:+   +:    +:    +:+     */
/*                                                 #+#   #+    #+    #+#      */
/*   Created: 2018/11/26 14:07:43 by thbrouss     #+#   ##    ##    #+#       */
/*   Updated: 2018/11/27 16:12:37 by thbrouss    ###    #+. /#+    ###.fr     */
/*                                                         /                  */
/*                                                        /                   */
/* ************************************************************************** */

#include "libft.h"

char	*ft_fstrjoin(const char *s1, const char *s2)
{
	char *dest;

	dest = ft_strjoin(s1, s2, 0);
	free((void*)s1);
	free((void*)s2);
	return (dest);
}
