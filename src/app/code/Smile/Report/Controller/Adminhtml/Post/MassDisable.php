<?php
namespace Smile\Report\Controller\Adminhtml\Post;

use Smile\Report\Controller\Adminhtml\AbstractMassStatus;

/**
 * Class MassDisable
 */
class MassDisable extends AbstractMassStatus
{
    /**
     * Field id
     */
    const ID_FIELD = 'post_id';

    /**
     * Resource collection
     *
     * @var string
     */
    protected $collection = 'Smile\Report\Model\ResourceModel\Post\Collection';

    /**
     * Page model
     *
     * @var string
     */
    protected $model = 'Smile\Report\Model\Post';

    /**
     * Page disable status
     *
     * @var boolean
     */
    protected $status = false;
}