<?php namespace Smile\Report\Model\ResourceModel\Post;

class Collection extends \Magento\Framework\Model\ResourceModel\Db\Collection\AbstractCollection
{
    /**
     * Define resource model
     *
     * @return void
     */
    protected function _construct()
    {
        $this->_init('Smile\Report\Model\Post', 'Smile\Report\Model\ResourceModel\Post');
    }

}